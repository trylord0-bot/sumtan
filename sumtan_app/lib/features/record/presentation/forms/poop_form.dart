import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';

class PoopForm extends ConsumerStatefulWidget {
  const PoopForm({super.key});

  @override
  ConsumerState<PoopForm> createState() => _PoopFormState();
}

class _PoopFormState extends ConsumerState<PoopForm> {
  String _type = '대변';
  String _status = '정상';
  DateTime _datetime = DateTime.now();
  final _memoCtrl = TextEditingController();

  @override
  void dispose() {
    _memoCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;
    final record = Record(
      petId: pet!.id!,
      category: 'poop',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {'type': _type, 'status': _status},
      memo: _memoCtrl.text.isEmpty ? null : _memoCtrl.text,
      createdAt: du.toIso8601(DateTime.now()),
    );
    await ref.read(recordNotifierProvider.notifier).add(record);
    ref.invalidate(todayRecordsProvider);
    ref.invalidate(recentRecordsProvider);
    ref.invalidate(selectedDateRecordsProvider);
    ref.invalidate(monthRecordsProvider);
    ref.invalidate(weeklyPoopStatsProvider);
    ref.invalidate(lastRecordProvider);
    if (mounted) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '💩 배변 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: '유형',
          options: const ['대변', '소변', '구토'],
          selected: _type,
          onChanged: (v) => setState(() => _type = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: '상태',
          options: const ['정상', '묽음', '딱딱함', '혈변'],
          selected: _status,
          onChanged: (v) => setState(() => _status = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
      ],
    );
  }
}
