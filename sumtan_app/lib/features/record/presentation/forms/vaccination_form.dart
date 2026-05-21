import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';

class VaccinationForm extends ConsumerStatefulWidget {
  const VaccinationForm({super.key});

  @override
  ConsumerState<VaccinationForm> createState() => _VaccinationFormState();
}

class _VaccinationFormState extends ConsumerState<VaccinationForm> {
  DateTime _datetime = DateTime.now();
  List<String> _vaccines = [];
  final _hospitalNameCtrl = TextEditingController();
  String _sideEffect = '없음';
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  static const _dogVaccineOptions = [
    '종합백신 (DHPPL)',
    '코로나장염',
    '켄넬코프',
    '광견병',
    '인플루엔자',
    '기타',
  ];

  static const _catVaccineOptions = [
    '종합백신 (FVRCP)',
    '광견병',
    '백혈병 (FeLV)',
    '클라미디아',
    '기타',
  ];

  @override
  void dispose() {
    _hospitalNameCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_vaccines.isEmpty) {
      showTopToast(context, context.l10n.hintSelectVaccineType);
      return;
    }
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final data = <String, dynamic>{
      'vaccines': _vaccines,
      'hospital_name':
          _hospitalNameCtrl.text.isEmpty ? null : _hospitalNameCtrl.text,
      'side_effect': _sideEffect,
    };
    final media = await _mediaController.saveToLocalFilesWithProgress(context);
    if (media.isNotEmpty) data['media'] = media;

    final record = Record(
      petId: pet!.id!,
      category: 'vaccination',
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
      showTopToast(context, context.l10n.vaccinationRecordSaved);
      Navigator.pop(context, true);
    }
  }

  List<String> _vaccineLabels(BuildContext context, List<String> options) {
    final l10n = context.l10n;
    return options
        .map((v) => switch (v) {
              '종합백신 (DHPPL)' => l10n.vaccineDhppl,
              '코로나장염' => l10n.vaccineCorona,
              '켄넬코프' => l10n.vaccineKennelCough,
              '광견병' => l10n.vaccineRabies,
              '인플루엔자' => l10n.vaccineInfluenza,
              '기타' => l10n.other,
              '종합백신 (FVRCP)' => l10n.vaccineFvrcp,
              '백혈병 (FeLV)' => l10n.vaccineFelv,
              '클라미디아' => l10n.vaccineChlamydia,
              _ => v,
            })
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final species = ref.watch(selectedPetProvider)?.species;
    final vaccineOptions =
        species == 'cat' ? _catVaccineOptions : _dogVaccineOptions;

    return FormShell(
      title: l10n.vaccinationFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormTagSelector(
          label: l10n.vaccineType,
          options: vaccineOptions,
          optionLabels: _vaccineLabels(context, vaccineOptions),
          selected: _vaccines,
          onChanged: (v) => setState(() => _vaccines = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: l10n.hospitalName,
          required: false,
          controller: _hospitalNameCtrl,
          hint: l10n.hospitalNameExample,
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: l10n.sideEffects,
          required: false,
          options: const ['없음', '경미', '심각'],
          optionLabels: [l10n.none, l10n.mild, l10n.severe],
          selected: _sideEffect,
          onChanged: (v) => setState(() => _sideEffect = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
