import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_toast.dart';
import '../../../core/utils/date_utils.dart' as du;
import '../../../core/utils/number_utils.dart';
import '../../../shared/constants/category_constants.dart';
import '../data/record_model.dart';
import '../../pet/provider/pet_provider.dart';
import '../provider/record_provider.dart';
import 'forms/form_widgets.dart';
import 'forms/media_attachment_field.dart';

Future<bool?> showRecordEditSheet(
  BuildContext context, {
  required Record record,
}) {
  return showModalBottomSheet<bool>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => RecordEditSheet(record: record),
  );
}

class RecordEditSheet extends ConsumerStatefulWidget {
  final Record record;

  const RecordEditSheet({super.key, required this.record});

  @override
  ConsumerState<RecordEditSheet> createState() => _RecordEditSheetState();
}

class _RecordEditSheetState extends ConsumerState<RecordEditSheet> {
  late DateTime _datetime;
  late Map<String, dynamic> _data;
  late TextEditingController _memoCtrl;
  late final RecordMediaController _mediaController;
  final _controllers = <String, TextEditingController>{};
  bool _saving = false;

  static const _mealAmountLabels = {
    'very_little': '매우 적음',
    'little': '적음',
    'normal': '보통',
    'much': '많음',
    'very_much': '매우 많음',
  };

  static const _amountKeysByLabel = {
    '매우 적음': 'very_little',
    '적음': 'little',
    '보통': 'normal',
    '많음': 'much',
    '매우 많음': 'very_much',
  };

  @override
  void initState() {
    super.initState();
    _datetime = widget.record.recordedAtDate;
    _data = Map<String, dynamic>.from(widget.record.dataJson ?? {});
    _memoCtrl = TextEditingController(text: widget.record.memo ?? '');
    _mediaController = RecordMediaController(initialItems: _mediaItems());
    _seedControllers();
  }

  @override
  void dispose() {
    _memoCtrl.dispose();
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    _mediaController.dispose();
    super.dispose();
  }

  List<RecordMediaItem> _mediaItems() {
    final raw = _data['media'];
    if (raw is! List) return const [];
    return raw
        .whereType<Map>()
        .map(
            (item) => RecordMediaItem.fromJson(Map<String, dynamic>.from(item)))
        .where((item) => item.path.isNotEmpty)
        .toList();
  }

  void _seedControllers() {
    void seed(String key) {
      final value = _data[key];
      _controllers[key] = TextEditingController(text: value?.toString() ?? '');
    }

    for (final key in [
      'medicine',
      'dose',
      'weight_kg',
      'amount_g',
      'milliliter',
      'hospital_name',
      'diagnosis',
      'cost',
      'shop_name',
      'duration_min',
      'distance_km',
      'title',
      'content',
      'custom_symptom',
    ]) {
      seed(key);
    }
  }

  TextEditingController _ctrl(String key) => _controllers[key]!;

  void _setData(String key, dynamic value) {
    setState(() => _data[key] = value);
  }

  List<String> _stringList(String key) {
    final value = _data[key];
    if (value is List) return value.map((e) => e.toString()).toList();
    return [];
  }

  void _setStringList(String key, List<String> value) {
    setState(() => _data[key] = value);
  }

  String _amountLabel(String? key) => _mealAmountLabels[key] ?? '보통';

  String _amountKey(String label) => _amountKeysByLabel[label] ?? 'normal';

  void _showSavingDialog() => setState(() => _saving = true);

  void _hideSavingDialog() {
    if (mounted) setState(() => _saving = false);
  }

  Future<void> _save() async {
    final category = widget.record.category;
    final data = Map<String, dynamic>.from(_data);

    String text(String key) => _ctrl(key).text.trim();

    switch (category) {
      case 'poop':
        if (data['type'] != '소변') {
          data['type'] = '대변';
        }
        break;
      case 'medication':
        if (text('medicine').isEmpty || text('dose').isEmpty) {
          showTopToast(context, context.l10n.hintMedicineAndDose);
          return;
        }
        data['medicine'] = text('medicine');
        data['dose'] = text('dose');
        break;
      case 'weight':
        final weight = parseLocalizedDecimal(text('weight_kg'));
        if (weight == null) {
          showTopToast(context, context.l10n.hintWeightIsNumber);
          return;
        }
        data['weight_kg'] = weight;
        break;
      case 'walk':
        final duration = int.tryParse(text('duration_min'));
        if (duration == null) {
          showTopToast(context, context.l10n.hintWalkTimeIsNumber);
          return;
        }
        data['duration_min'] = duration;
        final distance = parseLocalizedDecimal(text('distance_km'));
        if (distance == null) {
          data.remove('distance_km');
        } else {
          data['distance_km'] = distance;
        }
        break;
      case 'brushing':
        if (_stringList('parts').isEmpty) {
          showTopToast(context, context.l10n.hintSelectBrushingArea);
          return;
        }
        final duration = int.tryParse(text('duration_min'));
        if (duration == null) {
          data.remove('duration_min');
        } else {
          data['duration_min'] = duration;
        }
        break;
      case 'vaccination':
        // Migrate legacy vaccination record to hospital category
        data['visit_type'] = '예방접종';
        data['hospital_name'] =
            text('hospital_name').isEmpty ? null : text('hospital_name');
        data['diagnosis'] =
            text('diagnosis').isEmpty ? null : text('diagnosis');
        data['symptoms'] = _stringList('symptoms');
        final cost = parseLocalizedDecimal(text('cost'));
        if (cost == null) {
          data.remove('cost');
        } else {
          data['cost'] = cost;
        }
        break;
      case 'grooming':
        if (_stringList('types').isEmpty) {
          showTopToast(context, context.l10n.hintSelectGroomingType);
          return;
        }
        break;
      case 'memo':
        if (text('title').isEmpty) {
          showTopToast(context, context.l10n.hintMemoTitle);
          return;
        }
        data['title'] = text('title');
        data['content'] = text('content').isEmpty ? null : text('content');
        break;
      case 'meal':
        final amount = parseLocalizedDecimal(text('amount_g'));
        if (amount == null) {
          data.remove('amount_g');
        } else {
          data['amount_g'] = text('amount_g');
        }
        break;
      case 'water':
        final ml = int.tryParse(text('milliliter'));
        if (ml == null) {
          data.remove('milliliter');
        } else {
          data['milliliter'] = ml;
        }
        break;
      case 'hospital':
        data['hospital_name'] =
            text('hospital_name').isEmpty ? null : text('hospital_name');
        data['diagnosis'] =
            text('diagnosis').isEmpty ? null : text('diagnosis');
        final cost = parseLocalizedDecimal(text('cost'));
        if (cost == null) {
          data.remove('cost');
        } else {
          data['cost'] = cost;
        }
        break;
      case 'abnormal_symptom':
        data['symptom'] = _data['symptom'] as String? ?? '구토';
        data['custom_symptom'] =
            text('custom_symptom').isEmpty ? null : text('custom_symptom');
        break;
    }

    _showSavingDialog();
    await WidgetsBinding.instance.endOfFrame;
    if (!mounted) return;
    final media = await _mediaController.saveToLocalFiles();
    if (!mounted) return;
    if (media.isEmpty) {
      data.remove('media');
    } else {
      data['media'] = media;
    }

    // Migrate legacy vaccination records to hospital category
    final updatedCategory = widget.record.category == 'vaccination'
        ? 'hospital'
        : widget.record.category;

    final updated = Record(
      id: widget.record.id,
      petId: widget.record.petId,
      category: updatedCategory,
      recordedAt: du.toIso8601(_datetime),
      dataJson: data,
      memo: _memoCtrl.text.trim().isEmpty ? null : _memoCtrl.text.trim(),
      createdAt: widget.record.createdAt,
    );

    await ref.read(recordNotifierProvider.notifier).update(updated);
    if (category == 'weight') {
      final pet = ref.read(selectedPetProvider);
      if (pet != null && pet.id != null) {
        final newWeight = data['weight_kg'];
        if (newWeight != null &&
            newWeight is double &&
            pet.weight != newWeight) {
          final updatedPet = pet.copyWith(weight: newWeight);
          await ref.read(petRepositoryProvider).update(updatedPet);
          ref.invalidate(petsProvider);
        }
      }
    }
    _invalidateRecords();

    _hideSavingDialog();
    if (mounted) {
      showTopToast(context, context.l10n.recordUpdated);
      Navigator.pop(context, true);
    }
  }

  void _onDelete() {
    final id = widget.record.id;
    if (id == null) return;
    final cat = RecordCategoryX.fromString(widget.record.category);

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(context.l10n.deleteRecordConfirm),
        content:
            Text(context.l10n.deleteRecordBody(cat.localizedLabel(context))),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(context.l10n.cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(ctx);
              await ref.read(recordNotifierProvider.notifier).remove(id);
              _invalidateRecords();
              if (!mounted) return;
              showTopToast(context, context.l10n.recordDeleted);
              Navigator.pop(context, true);
            },
            style: TextButton.styleFrom(foregroundColor: AppColors.danger600),
            child: Text(context.l10n.delete),
          ),
        ],
      ),
    );
  }

  void _invalidateRecords() {
    ref.invalidate(todayRecordsProvider);
    ref.invalidate(recentRecordsProvider);
    ref.invalidate(selectedDateRecordsProvider);
    ref.invalidate(monthRecordsProvider);
    ref.invalidate(lastRecordProvider);
    ref.invalidate(weightHistoryProvider);
    ref.invalidate(weeklyPoopStatsProvider);
    ref.invalidate(weeklyMealStatsProvider);
    ref.invalidate(weeklyWaterStatsProvider);
  }

  @override
  Widget build(BuildContext context) {
    final cat = RecordCategoryX.fromString(widget.record.category);

    return Stack(
      children: [
        FormShell(
          title:
              '${cat.emoji} ${cat.localizedLabel(context)} ${context.l10n.edit}',
          onSave: _save,
          onDelete: _onDelete,
          deleteLabel: context.l10n.deleteThisRecord,
          children: [
            FormDateTimePicker(
              value: _datetime,
              onChanged: (dt) => setState(() => _datetime = dt),
            ),
            const SizedBox(height: AppSpacing.space4),
            ..._categoryFields(),
            if (widget.record.category != 'memo') ...[
              const SizedBox(height: AppSpacing.space4),
              FormMemoField(controller: _memoCtrl),
            ],
            const SizedBox(height: AppSpacing.space4),
            RecordMediaAttachmentField(controller: _mediaController),
          ],
        ),
        if (_saving)
          Positioned.fill(
            child: AbsorbPointer(
              child: ColoredBox(
                color: Colors.black.withOpacity(0.45),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2.5),
                        ),
                        const SizedBox(width: 14),
                        Text(context.l10n.saving,
                            style: const TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  List<Widget> _categoryFields() {
    final l10n = context.l10n;
    switch (widget.record.category) {
      case 'poop':
        final selectedType =
            _data['type'] == '소변' ? _data['type'] as String : '대변';
        return [
          FormSegmentRow(
            label: l10n.poopType,
            options: const ['대변', '소변'],
            optionLabels: [l10n.stool, l10n.urine],
            selected: selectedType,
            onChanged: (v) => _setData('type', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: l10n.poopStatus,
            options: const ['정상', '묽음', '딱딱함', '혈변'],
            optionLabels: [
              l10n.normal,
              l10n.loose,
              l10n.hard,
              l10n.bloodInStool
            ],
            selected: _data['status'] as String? ?? '정상',
            onChanged: (v) => _setData('status', v),
          ),
        ];
      case 'condition':
        return [
          FormSegmentRow(
            label: l10n.conditionScore,
            options: const ['1', '2', '3', '4', '5'],
            selected: (_data['score'] ?? 3).toString(),
            onChanged: (v) => _setData('score', int.parse(v)),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormTagSelector(
            label: l10n.symptomTags,
            required: false,
            options: const ['구토', '기침', '무기력', '식욕부진', '설사', '콧물', '재채기', '떨림'],
            optionLabels: [
              l10n.vomiting,
              l10n.cough,
              l10n.lethargy,
              l10n.lossOfAppetite,
              l10n.diarrhea,
              l10n.runnyNose,
              l10n.sneezing,
              l10n.trembling
            ],
            selected: _stringList('symptoms'),
            onChanged: (v) => _setStringList('symptoms', v),
          ),
        ];
      case 'medication':
        return [
          FormInputField(
              label: l10n.medicineName,
              controller: _ctrl('medicine'),
              hint: l10n.medicineNameExample),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
              label: l10n.dose,
              controller: _ctrl('dose'),
              hint: l10n.doseExample),
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
            selected: _data['method'] as String? ?? '경구',
            onChanged: (v) => _setData('method', v),
          ),
        ];
      case 'weight':
        return [
          FormInputField(
            label: l10n.weightKg,
            controller: _ctrl('weight_kg'),
            hint: l10n.example42,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+([.,]\d{0,2})?'))
            ],
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: l10n.measurementMethod,
            options: const ['동물병원', '가정용 체중계', '안고 측정'],
            optionLabels: [l10n.vetHospital, l10n.homeScale, l10n.holdAndWeigh],
            selected: _data['method'] as String? ?? '동물병원',
            onChanged: (v) => _setData('method', v),
          ),
        ];
      case 'meal':
        return [
          FormSegmentRow(
            label: l10n.mealAmount,
            required: false,
            options: const ['매우 적음', '적음', '보통', '많음', '매우 많음'],
            optionLabels: [
              l10n.veryLittle,
              l10n.little,
              l10n.normal,
              l10n.much,
              l10n.veryMuch
            ],
            selected: _amountLabel(_data['meal_amount'] as String?),
            onChanged: (v) => _setData('meal_amount', _amountKey(v)),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.servingAmount,
            required: false,
            controller: _ctrl('amount_g'),
            hint: l10n.example80,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+([.,]\d{0,1})?'))
            ],
          ),
        ];
      case 'water':
        return [
          FormSegmentRow(
            label: l10n.waterAmount,
            options: const ['매우 적음', '적음', '보통', '많음', '매우 많음'],
            optionLabels: [
              l10n.veryLittle,
              l10n.little,
              l10n.normal,
              l10n.much,
              l10n.veryMuch
            ],
            selected: _amountLabel(_data['water_amount'] as String?),
            onChanged: (v) => _setData('water_amount', _amountKey(v)),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.mlInputLabel,
            required: false,
            controller: _ctrl('milliliter'),
            hint: l10n.example200,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ];
      case 'hospital':
        final visitType = _data['visit_type'] as String? ?? '일반';
        return [
          FormInputField(
            label: l10n.hospitalName,
            required: false,
            controller: _ctrl('hospital_name'),
            hint: l10n.hospitalNameExample,
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: l10n.visitType,
            options: const ['일반', '정기검진', '응급', '예방접종'],
            optionLabels: [
              l10n.general,
              l10n.regularCheckup,
              l10n.emergency,
              l10n.vaccination
            ],
            selected: visitType,
            onChanged: (v) => _setData('visit_type', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormTagSelector(
            label: l10n.symptomTags,
            required: false,
            options: const [
              '구토',
              '기침',
              '무기력',
              '식욕부진',
              '설사',
              '콧물',
              '재채기',
              '떨림',
              '혈뇨',
              '혈변'
            ],
            optionLabels: [
              l10n.vomiting,
              l10n.cough,
              l10n.lethargy,
              l10n.lossOfAppetite,
              l10n.diarrhea,
              l10n.runnyNose,
              l10n.sneezing,
              l10n.trembling,
              l10n.bloodInUrine,
              l10n.bloodInStool
            ],
            selected: _stringList('symptoms'),
            onChanged: (v) => _setStringList('symptoms', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.treatmentContent,
            required: false,
            controller: _ctrl('diagnosis'),
            hint: l10n.diagnosisExample,
          ),
        ];
      case 'vaccination':
        _data['visit_type'] = '예방접종';
        return [
          FormInputField(
            label: l10n.hospitalName,
            required: false,
            controller: _ctrl('hospital_name'),
            hint: l10n.hospitalNameExample,
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: l10n.visitType,
            options: const ['예방접종'],
            optionLabels: [l10n.vaccination],
            selected: '예방접종',
            onChanged: (_) {},
          ),
          const SizedBox(height: AppSpacing.space4),
          FormTagSelector(
            label: l10n.symptomTags,
            required: false,
            options: const [
              '구토',
              '기침',
              '무기력',
              '식욕부진',
              '설사',
              '콧물',
              '재채기',
              '떨림',
              '혈뇨',
              '혈변'
            ],
            optionLabels: [
              l10n.vomiting,
              l10n.cough,
              l10n.lethargy,
              l10n.lossOfAppetite,
              l10n.diarrhea,
              l10n.runnyNose,
              l10n.sneezing,
              l10n.trembling,
              l10n.bloodInUrine,
              l10n.bloodInStool
            ],
            selected: _stringList('symptoms'),
            onChanged: (v) => _setStringList('symptoms', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.treatmentContent,
            required: false,
            controller: _ctrl('diagnosis'),
            hint: l10n.diagnosisExample,
          ),
        ];
      case 'grooming':
        return [
          FormTagSelector(
            label: l10n.groomingType,
            options: const ['목욕', '전체미용', '부분미용', '발톱', '귀청소', '치석제거', '항문낭'],
            optionLabels: [
              l10n.bath,
              l10n.fullGrooming,
              l10n.partialGrooming,
              l10n.nailTrim,
              l10n.earCleaning,
              l10n.tartarRemoval,
              l10n.analGlands
            ],
            selected: _stringList('types'),
            onChanged: (v) => _setStringList('types', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.shopName,
            required: false,
            controller: _ctrl('shop_name'),
            hint: l10n.shopNameExample,
          ),
        ];
      case 'brushing':
        return [
          FormTagSelector(
            label: l10n.brushingArea,
            options: const ['전체', '등', '배', '꼬리', '얼굴', '발'],
            optionLabels: [
              l10n.whole,
              l10n.back,
              l10n.belly,
              l10n.tail,
              l10n.face,
              l10n.paw
            ],
            selected: _stringList('parts'),
            onChanged: (v) => _setStringList('parts', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.timeTaken,
            required: false,
            controller: _ctrl('duration_min'),
            hint: l10n.example10,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ];
      case 'walk':
        return [
          FormInputField(
            label: l10n.walkTime,
            controller: _ctrl('duration_min'),
            hint: l10n.example30,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.distance,
            required: false,
            controller: _ctrl('distance_km'),
            hint: l10n.example25,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+([.,]\d{0,1})?'))
            ],
          ),
        ];
      case 'memo':
        return [
          FormInputField(
              label: l10n.title,
              controller: _ctrl('title'),
              hint: l10n.memoTitlePlaceholder),
          const SizedBox(height: AppSpacing.space4),
          FormMemoField(controller: _ctrl('content')),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: l10n.importance,
            options: const ['일반', '중요'],
            optionLabels: [l10n.general, l10n.important],
            selected: _data['pinned'] as String? ?? '일반',
            onChanged: (v) => _setData('pinned', v),
          ),
        ];
      case 'abnormal_symptom':
        final symptom = _data['symptom'] as String? ?? '구토';
        final showCustom = symptom == '기타';
        return [
          FormSegmentRow(
            label: l10n.abnormalSymptomType,
            options: const ['구토', '출혈', '경련/발작', '호흡곤란', '기타'],
            optionLabels: [
              l10n.vomiting,
              l10n.bleeding,
              l10n.seizure,
              l10n.dyspnea,
              l10n.other
            ],
            selected: symptom,
            onChanged: (v) => _setData('symptom', v),
          ),
          if (showCustom) ...[
            const SizedBox(height: AppSpacing.space4),
            FormInputField(
              label: l10n.customSymptom,
              required: false,
              controller: _ctrl('custom_symptom'),
              hint: l10n.customSymptomPlaceholder,
            ),
          ],
        ];
      default:
        return const [];
    }
  }
}
