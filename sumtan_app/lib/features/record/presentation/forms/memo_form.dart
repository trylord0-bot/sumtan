import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/localization/app_localizations.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';

class MemoForm extends ConsumerStatefulWidget {
  const MemoForm({super.key});

  @override
  ConsumerState<MemoForm> createState() => _MemoFormState();
}

class _MemoFormState extends ConsumerState<MemoForm> {
  DateTime _datetime = DateTime.now();
  final _titleCtrl = TextEditingController();
  final _contentCtrl = TextEditingController();
  String _pinned = '일반';
  final _mediaController = RecordMediaController();

  @override
  void dispose() {
    _titleCtrl.dispose();
    _contentCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final title = _titleCtrl.text.trim();
    if (title.isEmpty) {
      showTopToast(context, context.lt('💡 제목을 입력해 주세요'));
      return;
    }
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;
    final media = await _mediaController.saveToLocalFiles();

    final record = Record(
      petId: pet!.id!,
      category: 'memo',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'title': title,
        'content': _contentCtrl.text.isEmpty ? null : _contentCtrl.text,
        'pinned': _pinned,
        if (media.isNotEmpty) 'media': media,
      },
      memo: null,
      createdAt: du.toIso8601(DateTime.now()),
    );
    await ref.read(recordNotifierProvider.notifier).add(record);
    ref.invalidate(todayRecordsProvider);
    ref.invalidate(recentRecordsProvider);
    ref.invalidate(selectedDateRecordsProvider);
    ref.invalidate(monthRecordsProvider);
    ref.invalidate(lastRecordProvider);
    if (mounted) {
      showTopToast(context, context.lt('📝 메모가 기록됐어요'));
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '📝 메모',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: '제목',
          controller: _titleCtrl,
          hint: '메모 제목을 입력하세요',
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _contentCtrl),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: '중요도',
          options: const ['일반', '중요'],
          selected: _pinned,
          onChanged: (v) => setState(() => _pinned = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
