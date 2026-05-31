import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../../../core/utils/number_utils.dart';
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';
import '../../../../app/widgets/app_toast.dart';

class WeightForm extends ConsumerStatefulWidget {
  const WeightForm({super.key});

  @override
  ConsumerState<WeightForm> createState() => _WeightFormState();
}

class _WeightFormState extends ConsumerState<WeightForm> {
  DateTime _datetime = DateTime.now();
  final _weightCtrl = TextEditingController();
  String _method = '동물병원';
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  @override
  void dispose() {
    _weightCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final weightText = _weightCtrl.text.trim();
    if (weightText.isEmpty) {
      showTopToast(context, context.l10n.hintWeight);
      return;
    }

    final weight = parseLocalizedDecimal(weightText);
    if (weight == null) {
      showTopToast(context, context.l10n.hintWeightIsNumber);
      return;
    }

    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final media = await _mediaController.saveToLocalFilesWithProgress(context);
    final record = Record(
      petId: pet!.id!,
      category: 'weight',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'weight_kg': weight,
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
    ref.invalidate(weightHistoryProvider);
    ref.invalidate(lastRecordProvider);
    if (pet.weight != weight) {
      final updatedPet = pet.copyWith(weight: weight);
      await ref.read(petRepositoryProvider).update(updatedPet);
      ref.invalidate(petsProvider);
    }
    if (mounted) {
      showTopToast(context, context.l10n.weightRecordSaved);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.weightFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: l10n.weightKg,
          controller: _weightCtrl,
          hint: l10n.example42,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+([.,]\d{0,2})?')),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: l10n.measureMethod,
          options: const ['동물병원', '가정용 체중계', '안고 측정'],
          optionLabels: [l10n.vetHospital, l10n.homeScale, l10n.holdAndWeigh],
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
