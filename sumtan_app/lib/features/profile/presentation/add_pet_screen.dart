import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_page_app_bar.dart';
import '../../../core/utils/date_utils.dart' as du;
import '../../../core/widgets/localized_pickers.dart';
import '../../pet/data/pet_model.dart';
import '../../pet/provider/pet_provider.dart';
import '../../settings/provider/purchase_provider.dart';
import 'widgets/pet_add_payment.dart';

class AddPetScreen extends ConsumerStatefulWidget {
  const AddPetScreen({super.key});

  @override
  ConsumerState<AddPetScreen> createState() => _AddPetScreenState();
}

class _AddPetScreenState extends ConsumerState<AddPetScreen> {
  final _nameCtrl = TextEditingController();
  final _breedCtrl = TextEditingController();
  final _weightCtrl = TextEditingController();
  final _microchipCtrl = TextEditingController();
  final _regNumCtrl = TextEditingController();
  final _nameFocus = FocusNode();

  String _species = 'dog';
  String _gender = 'male';
  bool _neutered = false;
  DateTime? _birthDate;
  String? _photoPath;
  bool _nameError = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _breedCtrl.dispose();
    _weightCtrl.dispose();
    _microchipCtrl.dispose();
    _regNumCtrl.dispose();
    _nameFocus.dispose();
    super.dispose();
  }

  Future<void> _pickPhoto() async {
    try {
      final file = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (file != null) setState(() => _photoPath = file.path);
    } catch (_) {}
  }

  Future<void> _save() async {
    final name = _nameCtrl.text.trim();
    if (name.isEmpty) {
      setState(() => _nameError = true);
      _nameFocus.requestFocus();
      return;
    }
    setState(() => _nameError = false);

    final allowed = await ensureAdditionalPetPayment(context, ref);
    if (!allowed) return;

    final pet = Pet(
      name: name,
      species: _species,
      breed: _breedCtrl.text.trim().isEmpty ? null : _breedCtrl.text.trim(),
      birthDate: _birthDate?.toIso8601String().substring(0, 10),
      gender: _gender,
      weight: double.tryParse(_weightCtrl.text.trim()),
      isNeutered: _neutered,
      microchipId: _microchipCtrl.text.trim().isEmpty
          ? null
          : _microchipCtrl.text.trim(),
      regNumber:
          _regNumCtrl.text.trim().isEmpty ? null : _regNumCtrl.text.trim(),
      profileImagePath: _photoPath,
      createdAt: du.toIso8601(DateTime.now()),
    );

    final newId = await ref.read(petsProvider.notifier).add(pet);
    if (ref.read(purchaseProvider).hasAdditionalPetCredit) {
      await ref.read(purchaseProvider.notifier).consumeAdditionalPetCredit();
    }
    ref.read(selectedPetIdProvider.notifier).state = newId;

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(context.l10n.petAdded(name)),
        behavior: SnackBarBehavior.floating,
        shape: const StadiumBorder(),
        backgroundColor: AppColors.gray800,
        duration: const Duration(seconds: 2),
      ));
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: AppPageAppBar(title: context.l10n.addNewPet),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
        children: [
          // 사진
          _PhotoSection(
              photoPath: _photoPath, species: _species, onTap: _pickPhoto),
          const SizedBox(height: AppSpacing.space5),

          // 기본 정보
          _FormCard(
            title: context.l10n.basicInfo,
            children: [
              _LabelField(
                label: context.l10n.name,
                required: true,
                child: TextField(
                  controller: _nameCtrl,
                  focusNode: _nameFocus,
                  decoration: InputDecoration(
                    hintText: context.l10n.examplePetName,
                    hintStyle: const TextStyle(color: AppColors.gray400),
                    errorText: _nameError ? context.l10n.enterNameHint : null,
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  onChanged: (_) {
                    if (_nameError) setState(() => _nameError = false);
                  },
                ),
              ),
              const _Divider(),
              _LabelField(
                label: context.l10n.petKind,
                child: _SegmentRow(
                  options: const ['dog', 'cat', 'other'],
                  labels: [context.l10n.dogEmoji, context.l10n.catEmoji, context.l10n.otherEmoji],
                  selected: _species,
                  onChanged: (v) => setState(() => _species = v),
                ),
              ),
              const _Divider(),
              _LabelField(
                label: context.l10n.breed,
                child: TextField(
                  controller: _breedCtrl,
                  decoration: InputDecoration(
                    hintText: context.l10n.exampleBreed,
                    hintStyle: const TextStyle(color: AppColors.gray400),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              const _Divider(),
              // 생년월일
              InkWell(
                onTap: () async {
                  final picked = await showLocalizedDatePicker(
                    context: context,
                    initialDate: _birthDate ??
                        DateTime.now().subtract(const Duration(days: 365)),
                  );
                  if (picked != null) setState(() => _birthDate = picked);
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 88,
                        child: Text(context.l10n.birthDate,
                            style: const TextStyle(
                                fontSize: 13,
                                color: AppColors.gray500,
                                fontWeight: FontWeight.w500)),
                      ),
                      Expanded(
                        child: Text(
                          _birthDate != null
                              ? du.formatDate(_birthDate!)
                              : context.l10n.notEntered,
                          style: TextStyle(
                            fontSize: 14,
                            color: _birthDate != null
                                ? AppColors.gray900
                                : AppColors.gray400,
                          ),
                        ),
                      ),
                      const Icon(Icons.calendar_today_outlined,
                          size: 15, color: AppColors.gray300),
                    ],
                  ),
                ),
              ),
              const _Divider(),
              _LabelField(
                label: context.l10n.gender,
                child: Row(
                  children: [
                    _GenderChip(
                      label: context.l10n.maleSym,
                      selected: _gender == 'male',
                      onTap: () => setState(() => _gender = 'male'),
                    ),
                    const SizedBox(width: 8),
                    _GenderChip(
                      label: context.l10n.femaleSym,
                      selected: _gender == 'female',
                      onTap: () => setState(() => _gender = 'female'),
                    ),
                  ],
                ),
              ),
              const _Divider(),
              _LabelField(
                label: context.l10n.weight,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _weightCtrl,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+\.?\d{0,2}')),
                        ],
                        decoration: InputDecoration(
                          hintText: context.l10n.notEntered,
                          hintStyle: const TextStyle(color: AppColors.gray400),
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                    ),
                    const Text('kg',
                        style:
                            TextStyle(fontSize: 13, color: AppColors.gray400)),
                  ],
                ),
              ),
              const _Divider(),
              _LabelField(
                label: context.l10n.neuteringStatus,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _neutered ? context.l10n.done : context.l10n.notDone,
                        style: TextStyle(
                          fontSize: 14,
                          color: _neutered
                              ? AppColors.primary700
                              : AppColors.gray400,
                        ),
                      ),
                    ),
                    Switch(
                      value: _neutered,
                      onChanged: (v) => setState(() => _neutered = v),
                      activeThumbColor: AppColors.primary400,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space4),

          // 식별 정보 (선택)
          _FormCard(
            title: context.l10n.idInfoOptional,
            children: [
              _LabelField(
                label: context.l10n.microchip,
                child: TextField(
                  controller: _microchipCtrl,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(15),
                  ],
                  decoration: InputDecoration(
                    hintText: context.l10n.notRegistered,
                    hintStyle: const TextStyle(color: AppColors.gray400),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              const _Divider(),
              _LabelField(
                label: context.l10n.registrationNumber,
                child: TextField(
                  controller: _regNumCtrl,
                  decoration: InputDecoration(
                    hintText: context.l10n.notRegistered,
                    hintStyle: const TextStyle(color: AppColors.gray400),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ],
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
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.radiusXl),
                ),
              ),
              child: Text(
                context.l10n.save,
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

// ── widgets ──────────────────────────────────────────────────────────────────

class _PhotoSection extends StatelessWidget {
  final String? photoPath;
  final String species;
  final VoidCallback onTap;

  const _PhotoSection(
      {required this.photoPath, required this.species, required this.onTap});

  String get _emoji {
    switch (species) {
      case 'dog':
        return '🐶';
      case 'cat':
        return '🐱';
      default:
        return '🐾';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: photoPath == null
                    ? const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [AppColors.primary200, AppColors.primary400],
                      )
                    : null,
                image: photoPath != null
                    ? DecorationImage(
                        image: FileImage(File(photoPath!)),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              alignment: Alignment.center,
              child: photoPath == null
                  ? Text(_emoji, style: const TextStyle(fontSize: 40))
                  : null,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  color: AppColors.primary400,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Icon(Icons.camera_alt_outlined,
                    color: AppColors.white, size: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FormCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const _FormCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.radiusLg),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.gray500,
                letterSpacing: 0.3,
              ),
            ),
          ),
          ...children,
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _LabelField extends StatelessWidget {
  final String label;
  final bool required;
  final Widget child;

  const _LabelField(
      {required this.label, this.required = false, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 88,
            child: Row(
              children: [
                Text(label,
                    style: const TextStyle(
                        fontSize: 13,
                        color: AppColors.gray500,
                        fontWeight: FontWeight.w500)),
                if (required)
                  const Text(' *',
                      style:
                          TextStyle(fontSize: 13, color: AppColors.danger600)),
              ],
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}

class _SegmentRow extends StatelessWidget {
  final List<String> options;
  final List<String> labels;
  final String selected;
  final ValueChanged<String> onChanged;

  const _SegmentRow({
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
                padding: const EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  color: sel ? AppColors.primary400 : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.center,
                child: Text(
                  labels[i],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: sel ? AppColors.white : AppColors.gray500,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _GenderChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _GenderChip(
      {required this.label, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary400 : AppColors.gray100,
          borderRadius: BorderRadius.circular(AppRadius.radiusFull),
          border: Border.all(
              color: selected ? AppColors.primary400 : AppColors.gray200),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: selected ? AppColors.white : AppColors.gray500,
          ),
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) => Container(
      height: 1,
      color: AppColors.gray100,
      margin: const EdgeInsets.symmetric(horizontal: 16));
}
