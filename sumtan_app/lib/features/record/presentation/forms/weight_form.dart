import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/localization/app_localizations.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;
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
      showTopToast(context, context.lt('💡 체중을 입력해 주세요'));
      return;
    }

    final weight = double.tryParse(weightText);
    if (weight == null) {
      showTopToast(context, context.lt('💡 체중은 숫자로 입력해 주세요'));
      return;
    }

    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final media = await _mediaController.saveToLocalFiles();
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
    if (mounted) {
      showTopToast(context, context.lt('⚖️ 체중이 기록됐어요'));
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '⚖️ 체중 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: '체중 (kg)',
          controller: _weightCtrl,
          hint: '예: 4.2',
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: '측정 방법',
          options: const ['동물병원', '가정용 체중계', '안고 측정'],
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
