import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/l10n/l10n_extension.dart';
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
      showTopToast(context, context.l10n.hintSelectBrushingArea);
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
      showTopToast(context, context.l10n.brushingRecordSaved);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.brushingFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormTagSelector(
          label: l10n.brushingArea,
          options: _partOptions,
          optionLabels: [
            l10n.whole,
            l10n.back,
            l10n.belly,
            l10n.tail,
            l10n.face,
            l10n.paw,
          ],
          selected: _parts,
          onChanged: (v) => setState(() => _parts = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: l10n.timeTaken,
          required: false,
          controller: _durationCtrl,
          hint: l10n.example10,
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
