import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';
import '../../../../app/widgets/app_toast.dart';

class MedicationForm extends ConsumerStatefulWidget {
  const MedicationForm({super.key});

  @override
  ConsumerState<MedicationForm> createState() => _MedicationFormState();
}

class _MedicationFormState extends ConsumerState<MedicationForm> {
  DateTime _datetime = DateTime.now();
  final _nameCtrl = TextEditingController();
  final _doseCtrl = TextEditingController();
  String _method = '경구';
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    _doseCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final medicine = _nameCtrl.text.trim();
    final dose = _doseCtrl.text.trim();
    if (medicine.isEmpty) {
      showTopToast(context, '💡 약품명을 입력해 주세요');
      return;
    }
    if (dose.isEmpty) {
      showTopToast(context, '💡 용량을 입력해 주세요');
      return;
    }

    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;
    final media = await _mediaController.saveToLocalFiles();
    final record = Record(
      petId: pet!.id!,
      category: 'medication',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'medicine': medicine,
        'dose': dose,
        'method': _method,
        if (media.isNotEmpty) 'media': media,
      },
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
      showTopToast(context, '💊 투약이 기록됐어요');
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '💊 투약 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
            label: '약품명', controller: _nameCtrl, hint: '예: 항생제, 소화제'),
        const SizedBox(height: AppSpacing.space3),
        FormInputField(
            label: '용량', controller: _doseCtrl, hint: '예: 0.5ml, 1정'),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: '투약 방법',
          options: const ['경구', '주사', '외용', '점안', '점이'],
          selected: _method,
          onChanged: (v) => setState(() => _method = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
