import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
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
      showTopToast(context, context.l10n.hintMedicineName);
      return;
    }
    if (dose.isEmpty) {
      showTopToast(context, context.l10n.hintDose);
      return;
    }

    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;
    final media = await _mediaController.saveToLocalFilesWithProgress(context);
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
      showTopToast(context, context.l10n.medicationRecordSaved);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.medicationFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
            label: l10n.medicineName,
            controller: _nameCtrl,
            hint: l10n.medicineNameExample),
        const SizedBox(height: AppSpacing.space3),
        FormInputField(
            label: l10n.dose, controller: _doseCtrl, hint: l10n.doseExample),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: l10n.medicationMethod,
          options: const ['경구', '주사', '외용', '점안', '점이'],
          optionLabels: [
            l10n.oral,
            l10n.injection,
            l10n.topical,
            l10n.eyeDrops,
            l10n.earDrops
          ],
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
