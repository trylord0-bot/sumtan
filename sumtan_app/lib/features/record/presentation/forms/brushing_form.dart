import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/localization/app_localizations.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../../../features/pet/provider/pet_provider.dart';
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';

class BrushingForm extends ConsumerStatefulWidget {
  const BrushingForm({super.key});

  @override
  ConsumerState<BrushingForm> createState() => _BrushingFormState();
}

class _BrushingFormState extends ConsumerState<BrushingForm> {
  DateTime _datetime = DateTime.now();
  List<String> _parts = [];
  final _durationCtrl = TextEditingController();
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  static const _partOptions = [
    '전체',
    '등',
    '배',
    '꼬리',
    '얼굴',
    '발',
  ];

  @override
  void dispose() {
    _durationCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_parts.isEmpty) {
      showTopToast(context, context.lt('💡 빗질 부위를 하나 이상 선택해 주세요'));
      return;
    }

    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final duration =
        _durationCtrl.text.isEmpty ? null : int.tryParse(_durationCtrl.text);
    final media = await _mediaController.saveToLocalFiles();

    final record = Record(
      petId: pet!.id!,
      category: 'brushing',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'parts': _parts,
        if (duration != null) 'duration_min': duration,
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
      showTopToast(context, context.lt('🪥 빗질이 기록됐어요'));
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '🪥 빗질 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormTagSelector(
          label: '빗질 부위',
          options: _partOptions,
          selected: _parts,
          onChanged: (v) => setState(() => _parts = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: '소요 시간',
          required: false,
          controller: _durationCtrl,
          hint: '예: 10',
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
