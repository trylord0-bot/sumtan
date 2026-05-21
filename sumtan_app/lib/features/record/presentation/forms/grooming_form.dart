import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';

class GroomingForm extends ConsumerStatefulWidget {
  const GroomingForm({super.key});

  @override
  ConsumerState<GroomingForm> createState() => _GroomingFormState();
}

class _GroomingFormState extends ConsumerState<GroomingForm> {
  DateTime _datetime = DateTime.now();
  List<String> _types = [];
  final _shopNameCtrl = TextEditingController();
  final _costCtrl = TextEditingController();
  DateTime? _nextDate;
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  static const _typeOptions = [
    '목욕',
    '전체미용',
    '부분미용',
    '발톱',
    '귀청소',
    '치석제거',
    '항문낭',
  ];

  @override
  void dispose() {
    _shopNameCtrl.dispose();
    _costCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_types.isEmpty) {
      showTopToast(context, context.l10n.hintSelectGroomingType);
      return;
    }
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final cost =
        _costCtrl.text.isNotEmpty ? double.tryParse(_costCtrl.text) : null;

    final data = <String, dynamic>{
      'types': _types,
      'shop_name': _shopNameCtrl.text.isEmpty ? null : _shopNameCtrl.text,
    };
    if (cost != null) data['cost'] = cost;
    if (_nextDate != null) data['next_date'] = du.toIso8601(_nextDate!);
    final media = await _mediaController.saveToLocalFilesWithProgress(context);
    if (media.isNotEmpty) data['media'] = media;

    final record = Record(
      petId: pet!.id!,
      category: 'grooming',
      recordedAt: du.toIso8601(_datetime),
      dataJson: data,
      memo: _memoCtrl.text.isEmpty ? null : _memoCtrl.text,
      createdAt: du.toIso8601(DateTime.now()),
    );
    await ref.read(recordNotifierProvider.notifier).add(record);
    ref.invalidate(todayRecordsProvider);
    ref.invalidate(recentRecordsProvider);
    ref.invalidate(selectedDateRecordsProvider);
    ref.invalidate(monthRecordsProvider);
    ref.invalidate(lastRecordProvider);
    if (mounted) {
      showTopToast(context, context.l10n.groomingRecordSaved);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.groomingFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormTagSelector(
          label: l10n.groomingType,
          options: _typeOptions,
          optionLabels: [
            l10n.bath,
            l10n.fullGrooming,
            l10n.partialGrooming,
            l10n.nailTrim,
            l10n.earCleaning,
            l10n.tartarRemoval,
            l10n.analGlands,
          ],
          selected: _types,
          onChanged: (v) => setState(() => _types = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: l10n.shopName,
          required: false,
          controller: _shopNameCtrl,
          hint: l10n.shopNameExample,
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.cost, required: false),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _costCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: l10n.example50000,
                prefixText: '₩',
              ),
              style: const TextStyle(fontSize: 16, color: AppColors.gray900),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.nextAppointment, required: false),
            const SizedBox(height: AppSpacing.space2),
            if (_nextDate == null)
              GestureDetector(
                onTap: () => setState(() => _nextDate = DateTime.now()),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  decoration: BoxDecoration(
                    color: AppColors.primary50,
                    borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                  ),
                  child: Text(l10n.addNextAppointment,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary600,
                      )),
                ),
              )
            else
              Row(
                children: [
                  Expanded(
                    child: FormDateTimePicker(
                      value: _nextDate!,
                      onChanged: (dt) => setState(() => _nextDate = dt),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space2),
                  GestureDetector(
                    onTap: () => setState(() => _nextDate = null),
                    child: Text(l10n.delete,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.danger400,
                        )),
                  ),
                ],
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
