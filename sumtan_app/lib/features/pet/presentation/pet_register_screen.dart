import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_page_app_bar.dart';
import '../../../app/widgets/app_toast.dart';
import '../../../core/utils/date_utils.dart' as du;
import '../../../core/widgets/localized_pickers.dart';
import '../data/pet_model.dart';
import '../provider/pet_provider.dart';

class PetRegisterScreen extends ConsumerStatefulWidget {
  final Pet? editPet;

  const PetRegisterScreen({super.key, this.editPet});

  @override
  ConsumerState<PetRegisterScreen> createState() => _PetRegisterScreenState();
}

class _PetRegisterScreenState extends ConsumerState<PetRegisterScreen> {
  final _nameCtrl = TextEditingController();
  final _breedCtrl = TextEditingController();
  String _species = 'dog';
  String _gender = 'male';
  bool _neutered = false;
  DateTime? _birthDate;

  bool get _isEdit => widget.editPet != null;

  @override
  void initState() {
    super.initState();
    final p = widget.editPet;
    if (p != null) {
      _nameCtrl.text = p.name;
      _breedCtrl.text = p.breed ?? '';
      _species = p.species ?? 'dog';
      _gender = p.gender ?? 'male';
      _neutered = p.isNeutered;
      _birthDate = p.birthDate != null ? DateTime.tryParse(p.birthDate!) : null;
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _breedCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_nameCtrl.text.trim().isEmpty) {
      showTopToast(context, context.l10n.enterNameHint);
      return;
    }
    final now = du.toIso8601(DateTime.now());
    if (_isEdit) {
      final updated = widget.editPet!.copyWith(
        name: _nameCtrl.text.trim(),
        species: _species,
        breed: _breedCtrl.text.trim().isEmpty ? null : _breedCtrl.text.trim(),
        gender: _gender,
        isNeutered: _neutered,
        birthDate: _birthDate?.toIso8601String().substring(0, 10),
      );
      await ref.read(petsProvider.notifier).update(updated);
    } else {
      final pet = Pet(
        name: _nameCtrl.text.trim(),
        species: _species,
        breed: _breedCtrl.text.trim().isEmpty ? null : _breedCtrl.text.trim(),
        gender: _gender,
        isNeutered: _neutered,
        birthDate: _birthDate?.toIso8601String().substring(0, 10),
        createdAt: now,
      );
      await ref.read(petsProvider.notifier).add(pet);
    }
    if (mounted) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: AppPageAppBar(title: _isEdit ? context.l10n.editPet : context.l10n.registerPet),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.space4),
        children: [
          // 이름
          _FieldLabel('${context.l10n.name} *'),
          const SizedBox(height: AppSpacing.space2),
          TextFormField(
            controller: _nameCtrl,
            decoration: InputDecoration(hintText: context.l10n.examplePetName),
          ),
          const SizedBox(height: AppSpacing.space4),

          // 종
          _FieldLabel(context.l10n.petKind),
          const SizedBox(height: AppSpacing.space2),
          _SegmentControl(
            options: const ['dog', 'cat', 'other'],
            labels: [context.l10n.dogEmoji, context.l10n.catEmoji, context.l10n.otherEmoji],
            selected: _species,
            onChanged: (v) => setState(() => _species = v),
          ),
          const SizedBox(height: AppSpacing.space4),

          // 품종
          _FieldLabel(context.l10n.breed),
          const SizedBox(height: AppSpacing.space2),
          TextFormField(
            controller: _breedCtrl,
            decoration: InputDecoration(hintText: context.l10n.exampleBreedMulti),
          ),
          const SizedBox(height: AppSpacing.space4),

          // 성별
          _FieldLabel(context.l10n.gender),
          const SizedBox(height: AppSpacing.space2),
          _SegmentControl(
            options: const ['male', 'female'],
            labels: [context.l10n.maleSym, context.l10n.femaleSym],
            selected: _gender,
            onChanged: (v) => setState(() => _gender = v),
          ),
          const SizedBox(height: AppSpacing.space4),

          // 중성화
          _FieldLabel(context.l10n.neuteringStatus),
          const SizedBox(height: AppSpacing.space2),
          Row(
            children: [
              Switch(
                value: _neutered,
                onChanged: (v) => setState(() => _neutered = v),
                activeThumbColor: AppColors.primary400,
              ),
              const SizedBox(width: AppSpacing.space2),
              Text(
                _neutered ? context.l10n.neuteredDone : context.l10n.notNeutered,
                style: TextStyle(
                  fontSize: 14,
                  color: _neutered ? AppColors.primary900 : AppColors.gray500,
                  fontWeight: _neutered ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space4),

          // 생년월일
          _FieldLabel(context.l10n.birthDate),
          const SizedBox(height: AppSpacing.space2),
          GestureDetector(
            onTap: () async {
              final picked = await showLocalizedDatePicker(
                context: context,
                initialDate: _birthDate ??
                    DateTime.now().subtract(const Duration(days: 365)),
              );
              if (picked != null) setState(() => _birthDate = picked);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space4,
                vertical: AppSpacing.space3,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: AppColors.gray200),
              ),
              child: Row(
                children: [
                  const Icon(Icons.calendar_today_outlined,
                      size: 16, color: AppColors.primary600),
                  const SizedBox(width: AppSpacing.space2),
                  Text(
                    _birthDate != null
                        ? du.formatDate(_birthDate!)
                        : context.l10n.selectDateHint,
                    style: TextStyle(
                      fontSize: 16,
                      color: _birthDate != null
                          ? AppColors.gray900
                          : AppColors.gray400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.space8),

          // 저장 버튼
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: _save,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary400,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text(
                _isEdit ? context.l10n.saveChanges : context.l10n.registerBtn,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  final String text;
  const _FieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: AppColors.gray700,
        ));
  }
}

class _SegmentControl extends StatelessWidget {
  final List<String> options;
  final List<String> labels;
  final String selected;
  final ValueChanged<String> onChanged;

  const _SegmentControl({
    required this.options,
    required this.labels,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Row(
        children: List.generate(options.length, (i) {
          final sel = selected == options[i];
          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(options[i]),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                padding: const EdgeInsets.symmetric(vertical: 9),
                decoration: BoxDecoration(
                  color: sel ? AppColors.primary400 : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.center,
                child: Text(labels[i],
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: sel ? AppColors.white : AppColors.gray500,
                    )),
              ),
            ),
          );
        }),
      ),
    );
  }
}
