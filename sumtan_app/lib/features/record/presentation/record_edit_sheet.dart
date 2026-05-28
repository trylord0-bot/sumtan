import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_toast.dart';
import '../../../core/utils/date_utils.dart' as du;
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
      case 'medication':
        if (text('medicine').isEmpty || text('dose').isEmpty) {
          showTopToast(context, context.l10n.hintMedicineAndDose);
          return;
        }
        data['medicine'] = text('medicine');
        data['dose'] = text('dose');
      case 'weight':
        final weight = double.tryParse(text('weight_kg'));
        if (weight == null) {
          showTopToast(context, context.l10n.hintWeightIsNumber);
          return;
        }
        data['weight_kg'] = weight;
      case 'walk':
        final duration = int.tryParse(text('duration_min'));
        if (duration == null) {
          showTopToast(context, context.l10n.hintWalkTimeIsNumber);
          return;
        }
        data['duration_min'] = duration;
        final distance = double.tryParse(text('distance_km'));
        if (distance == null) {
          data.remove('distance_km');
        } else {
          data['distance_km'] = distance;
        }
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
      case 'vaccination':
        if (_stringList('vaccines').isEmpty) {
          showTopToast(context, context.l10n.hintSelectVaccineType);
          return;
        }
      case 'grooming':
        if (_stringList('types').isEmpty) {
          showTopToast(context, context.l10n.hintSelectGroomingType);
          return;
        }
      case 'memo':
        if (text('title').isEmpty) {
          showTopToast(context, context.l10n.hintMemoTitle);
          return;
        }
        data['title'] = text('title');
        data['content'] = text('content').isEmpty ? null : text('content');
      case 'meal':
        final amount = double.tryParse(text('amount_g'));
        if (amount == null) {
          data.remove('amount_g');
        } else {
          data['amount_g'] = text('amount_g');
        }
      case 'water':
        final ml = int.tryParse(text('milliliter'));
        if (ml == null) {
          data.remove('milliliter');
        } else {
          data['milliliter'] = ml;
        }
      case 'hospital':
        data['hospital_name'] =
            text('hospital_name').isEmpty ? null : text('hospital_name');
        data['diagnosis'] =
            text('diagnosis').isEmpty ? null : text('diagnosis');
        final cost = double.tryParse(text('cost'));
        if (cost == null) {
          data.remove('cost');
        } else {
          data['cost'] = cost;
        }
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

    final updated = Record(
      id: widget.record.id,
      petId: widget.record.petId,
      category: widget.record.category,
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
        if (newWeight != null && newWeight is double && pet.weight != newWeight) {
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
        content: Text(context.l10n.deleteRecordBody(cat.localizedLabel(context))),
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
                color: Colors.black.withValues(alpha: 0.45),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2.5),
                        ),
                        SizedBox(width: 14),
                        Text('저장 중...', style: TextStyle(fontSize: 15)),
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
    switch (widget.record.category) {
      case 'poop':
        return [
          FormSegmentRow(
            label: '유형',
            options: const ['대변', '소변', '구토'],
            selected: _data['type'] as String? ?? '대변',
            onChanged: (v) => _setData('type', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: '상태',
            options: const ['정상', '묽음', '딱딱함', '혈변'],
            selected: _data['status'] as String? ?? '정상',
            onChanged: (v) => _setData('status', v),
          ),
        ];
      case 'condition':
        return [
          FormSegmentRow(
            label: '컨디션 점수',
            options: const ['1', '2', '3', '4', '5'],
            selected: (_data['score'] ?? 3).toString(),
            onChanged: (v) => _setData('score', int.parse(v)),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormTagSelector(
            label: '증상 태그',
            required: false,
            options: const ['구토', '기침', '무기력', '식욕부진', '설사', '콧물', '재채기', '떨림'],
            selected: _stringList('symptoms'),
            onChanged: (v) => _setStringList('symptoms', v),
          ),
        ];
      case 'medication':
        return [
          FormInputField(
              label: '약품명', controller: _ctrl('medicine'), hint: '예: 항생제'),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
              label: '용량', controller: _ctrl('dose'), hint: '예: 0.5ml'),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: '투약 방법',
            options: const ['경구', '주사', '외용', '점안', '점이'],
            selected: _data['method'] as String? ?? '경구',
            onChanged: (v) => _setData('method', v),
          ),
        ];
      case 'weight':
        return [
          FormInputField(
            label: '체중 (kg)',
            controller: _ctrl('weight_kg'),
            hint: '예: 4.2',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
            ],
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: '측정 방법',
            options: const ['동물병원', '가정용 체중계', '안고 측정'],
            selected: _data['method'] as String? ?? '동물병원',
            onChanged: (v) => _setData('method', v),
          ),
        ];
      case 'meal':
        return [
          FormSegmentRow(
            label: '식사량',
            required: false,
            options: const ['매우 적음', '적음', '보통', '많음', '매우 많음'],
            selected: _amountLabel(_data['meal_amount'] as String?),
            onChanged: (v) => _setData('meal_amount', _amountKey(v)),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: '급여량',
            required: false,
            controller: _ctrl('amount_g'),
            hint: '예: 80',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,1}'))
            ],
          ),
        ];
      case 'water':
        return [
          FormSegmentRow(
            label: '음수량',
            options: const ['매우 적음', '적음', '보통', '많음', '매우 많음'],
            selected: _amountLabel(_data['water_amount'] as String?),
            onChanged: (v) => _setData('water_amount', _amountKey(v)),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: 'mL 직접 입력',
            required: false,
            controller: _ctrl('milliliter'),
            hint: '예: 200',
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ];
      case 'hospital':
        return [
          FormInputField(
            label: '병원명',
            required: false,
            controller: _ctrl('hospital_name'),
            hint: '예: 행복동물병원',
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: '진료 유형',
            options: const ['일반', '정기검진', '응급'],
            selected: _data['visit_type'] as String? ?? '일반',
            onChanged: (v) => _setData('visit_type', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormTagSelector(
            label: '증상 태그',
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
            selected: _stringList('symptoms'),
            onChanged: (v) => _setStringList('symptoms', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: '진단명',
            required: false,
            controller: _ctrl('diagnosis'),
            hint: '예: 장염',
          ),
        ];
      case 'vaccination':
        return [
          FormTagSelector(
            label: '백신 종류',
            options: const [
              '종합백신 (DHPPL)',
              '코로나장염',
              '켄넬코프',
              '광견병',
              '인플루엔자',
              '종합백신 (FVRCP)',
              '백혈병 (FeLV)',
              '클라미디아',
              '기타'
            ],
            selected: _stringList('vaccines'),
            onChanged: (v) => _setStringList('vaccines', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: '병원명',
            required: false,
            controller: _ctrl('hospital_name'),
            hint: '예: 행복동물병원',
          ),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: '부작용',
            required: false,
            options: const ['없음', '경미', '심각'],
            selected: _data['side_effect'] as String? ?? '없음',
            onChanged: (v) => _setData('side_effect', v),
          ),
        ];
      case 'grooming':
        return [
          FormTagSelector(
            label: '미용 종류',
            options: const ['목욕', '전체미용', '부분미용', '발톱', '귀청소', '치석제거', '항문낭'],
            selected: _stringList('types'),
            onChanged: (v) => _setStringList('types', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: '샵 이름',
            required: false,
            controller: _ctrl('shop_name'),
            hint: '예: 뽀송뽀송 펫샵',
          ),
        ];
      case 'brushing':
        return [
          FormTagSelector(
            label: '빗질 부위',
            options: const ['전체', '등', '배', '꼬리', '얼굴', '발'],
            selected: _stringList('parts'),
            onChanged: (v) => _setStringList('parts', v),
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: '소요 시간',
            required: false,
            controller: _ctrl('duration_min'),
            hint: '예: 10',
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ];
      case 'walk':
        return [
          FormInputField(
            label: '산책 시간',
            controller: _ctrl('duration_min'),
            hint: '예: 30',
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: '거리',
            required: false,
            controller: _ctrl('distance_km'),
            hint: '예: 2.5',
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,1}'))
            ],
          ),
        ];
      case 'memo':
        return [
          FormInputField(
              label: '제목', controller: _ctrl('title'), hint: '메모 제목'),
          const SizedBox(height: AppSpacing.space4),
          FormMemoField(controller: _ctrl('content')),
          const SizedBox(height: AppSpacing.space4),
          FormSegmentRow(
            label: '중요도',
            options: const ['일반', '중요'],
            selected: _data['pinned'] as String? ?? '일반',
            onChanged: (v) => _setData('pinned', v),
          ),
        ];
      default:
        return const [];
    }
  }
}
