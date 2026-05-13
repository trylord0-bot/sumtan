import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class WalkForm extends ConsumerStatefulWidget {
  const WalkForm({super.key});

  @override
  ConsumerState<WalkForm> createState() => _WalkFormState();
}

class _WalkFormState extends ConsumerState<WalkForm> {
  DateTime _datetime = DateTime.now();
  final _durationCtrl = TextEditingController();
  final _distanceCtrl = TextEditingController();
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  @override
  void dispose() {
    _durationCtrl.dispose();
    _distanceCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final durationText = _durationCtrl.text.trim();
    if (durationText.isEmpty) {
      showTopToast(context, context.l10n.hintWalkTime);
      return;
    }
    final duration = int.tryParse(durationText);
    if (duration == null) {
      showTopToast(context, context.l10n.hintWalkTimeIsNumber);
      return;
    }

    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final data = <String, dynamic>{
      'duration_min': duration,
    };
    if (_distanceCtrl.text.isNotEmpty) {
      data['distance_km'] = double.tryParse(_distanceCtrl.text);
    }
    final media = await _mediaController.saveToLocalFiles();
    if (media.isNotEmpty) data['media'] = media;

    final record = Record(
      petId: pet!.id!,
      category: 'walk',
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
      showTopToast(context, context.l10n.walkRecordSaved);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.walkFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.walkTime),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _durationCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                hintText: l10n.example30,
                suffixText: '분',
              ),
              style: const TextStyle(fontSize: 16, color: AppColors.gray900),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.distance, required: false),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _distanceCtrl,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,1}')),
              ],
              decoration: InputDecoration(
                hintText: l10n.example25,
                suffixText: 'km',
              ),
              style: const TextStyle(fontSize: 16, color: AppColors.gray900),
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
