import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as ph;
import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../core/utils/date_utils.dart' as du;
import '../../../core/widgets/localized_pickers.dart';
import '../../pet/data/pet_model.dart';
import '../../pet/provider/pet_provider.dart';
import 'widgets/pet_add_payment.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  final _nameCtrl = TextEditingController();
  final _breedCtrl = TextEditingController();
  final _weightCtrl = TextEditingController();
  final _microchipCtrl = TextEditingController();
  final _regNumCtrl = TextEditingController();

  int? _syncedPetId;

  // Only reset controllers when the selected pet actually changes
  void _syncControllers(Pet pet) {
    if (pet.id == _syncedPetId) return;
    _syncedPetId = pet.id;
    _nameCtrl.text = pet.name;
    _breedCtrl.text = pet.breed ?? '';
    _weightCtrl.text = pet.weight != null ? '${pet.weight}' : '';
    _microchipCtrl.text = pet.microchipId ?? '';
    _regNumCtrl.text = pet.regNumber ?? '';
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _breedCtrl.dispose();
    _weightCtrl.dispose();
    _microchipCtrl.dispose();
    _regNumCtrl.dispose();
    super.dispose();
  }

  void _showSaved() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(context.l10n.savedMsg),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        shape: const StadiumBorder(),
        backgroundColor: AppColors.gray800,
      ),
    );
  }

  // ── auto-save helpers ────────────────────────────────────────────────────────

  Future<void> _saveName(Pet p) async {
    final name = _nameCtrl.text.trim();
    if (name.isEmpty || name == p.name) return;
    await ref
        .read(petsProvider.notifier)
        .update(_with(p, name: name), previousWeight: p.weight);
    _showSaved();
  }

  Future<void> _saveBreed(Pet p) async {
    final breed =
        _breedCtrl.text.trim().isEmpty ? null : _breedCtrl.text.trim();
    if (breed == p.breed) return;
    await ref.read(petsProvider.notifier).update(
        _with(p, breed: breed, clearBreed: breed == null),
        previousWeight: p.weight);
    _showSaved();
  }

  Future<void> _saveWeight(Pet p) async {
    final prev = p.weight;
    final next = double.tryParse(_weightCtrl.text.trim());
    if (next == prev) return;
    await ref
        .read(petsProvider.notifier)
        .update(_withWeight(p, next), previousWeight: prev);
    _showSaved();
  }

  Future<void> _saveMicrochip(Pet p) async {
    final val =
        _microchipCtrl.text.trim().isEmpty ? null : _microchipCtrl.text.trim();
    if (val == p.microchipId) return;
    await ref
        .read(petsProvider.notifier)
        .update(_withIds(p, microchipId: val), previousWeight: p.weight);
    _showSaved();
  }

  Future<void> _saveRegNum(Pet p) async {
    final val =
        _regNumCtrl.text.trim().isEmpty ? null : _regNumCtrl.text.trim();
    if (val == p.regNumber) return;
    await ref
        .read(petsProvider.notifier)
        .update(_withIds(p, regNumber: val), previousWeight: p.weight);
    _showSaved();
  }

  Future<void> _saveBirthDate(Pet p, DateTime? date) async {
    final str = date?.toIso8601String().substring(0, 10);
    if (str == p.birthDate) return;
    await ref
        .read(petsProvider.notifier)
        .update(_withDate(p, str), previousWeight: p.weight);
    _showSaved();
  }

  Future<void> _saveGender(Pet p, String gender) async {
    if (gender == p.gender) return;
    await ref
        .read(petsProvider.notifier)
        .update(_full(p, gender: gender), previousWeight: p.weight);
    _showSaved();
  }

  Future<void> _saveNeutered(Pet p, bool val) async {
    if (val == p.isNeutered) return;
    await ref
        .read(petsProvider.notifier)
        .update(_full(p, isNeutered: val), previousWeight: p.weight);
    _showSaved();
  }

  Future<void> _pickPhoto(Pet p) async {
    try {
      final file = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (file == null) return;
      final appDir = await getApplicationDocumentsDirectory();
      final dir = Directory(ph.join(appDir.path, 'profile_images'));
      await dir.create(recursive: true);
      final ext = ph.extension(file.path).isNotEmpty ? ph.extension(file.path) : '.jpg';
      final destPath = ph.join(dir.path, '${DateTime.now().millisecondsSinceEpoch}$ext');
      await File(file.path).copy(destPath);
      await ref.read(petsProvider.notifier).update(
          _full(p, profileImagePath: destPath),
          previousWeight: p.weight);
    } catch (_) {}
  }

  void _confirmDelete(Pet p) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(context.l10n.deletePetConfirm(p.name)),
        content: Text(context.l10n.deletePetWarning(p.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(context.l10n.commonCancel),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: AppColors.danger600),
            onPressed: () async {
              Navigator.pop(ctx);
              final name = p.name;
              await ref.read(petsProvider.notifier).remove(p.id!);
              ref.read(selectedPetIdProvider.notifier).state = null;
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(context.l10n.petDeleted(name)),
                  behavior: SnackBarBehavior.floating,
                  shape: const StadiumBorder(),
                  backgroundColor: AppColors.gray800,
                ));
              }
            },
            child: Text(context.l10n.commonDelete),
          ),
        ],
      ),
    );
  }

  // ── Pet builders ─────────────────────────────────────────────────────────────

  Pet _with(Pet p, {String? name, String? breed, bool clearBreed = false}) =>
      Pet(
        id: p.id,
        name: name ?? p.name,
        species: p.species,
        breed: clearBreed ? null : (breed ?? p.breed),
        birthDate: p.birthDate,
        gender: p.gender,
        weight: p.weight,
        isNeutered: p.isNeutered,
        microchipId: p.microchipId,
        regNumber: p.regNumber,
        profileImagePath: p.profileImagePath,
        createdAt: p.createdAt,
      );

  Pet _withWeight(Pet p, double? w) => Pet(
        id: p.id,
        name: p.name,
        species: p.species,
        breed: p.breed,
        birthDate: p.birthDate,
        gender: p.gender,
        weight: w,
        isNeutered: p.isNeutered,
        microchipId: p.microchipId,
        regNumber: p.regNumber,
        profileImagePath: p.profileImagePath,
        createdAt: p.createdAt,
      );

  Pet _withDate(Pet p, String? date) => Pet(
        id: p.id,
        name: p.name,
        species: p.species,
        breed: p.breed,
        birthDate: date,
        gender: p.gender,
        weight: p.weight,
        isNeutered: p.isNeutered,
        microchipId: p.microchipId,
        regNumber: p.regNumber,
        profileImagePath: p.profileImagePath,
        createdAt: p.createdAt,
      );

  Pet _withIds(Pet p, {String? microchipId, String? regNumber}) => Pet(
        id: p.id,
        name: p.name,
        species: p.species,
        breed: p.breed,
        birthDate: p.birthDate,
        gender: p.gender,
        weight: p.weight,
        isNeutered: p.isNeutered,
        microchipId: microchipId ?? p.microchipId,
        regNumber: regNumber ?? p.regNumber,
        profileImagePath: p.profileImagePath,
        createdAt: p.createdAt,
      );

  Pet _full(
    Pet p, {
    String? gender,
    bool? isNeutered,
    String? profileImagePath,
  }) =>
      Pet(
        id: p.id,
        name: p.name,
        species: p.species,
        breed: p.breed,
        birthDate: p.birthDate,
        gender: gender ?? p.gender,
        weight: p.weight,
        isNeutered: isNeutered ?? p.isNeutered,
        microchipId: p.microchipId,
        regNumber: p.regNumber,
        profileImagePath: profileImagePath ?? p.profileImagePath,
        createdAt: p.createdAt,
      );

  // ── build ─────────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final petsAsync = ref.watch(petsProvider);

    return petsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) =>
          Center(child: Text(context.l10n.errorOccurredWithDetail('$e'))),
      data: (pets) {
        // ── 빈 상태: 기존 화면 유지 ─────────────────────────────────────────
        if (pets.isEmpty) {
          return _EmptyProfileState(
            onAdd: () => openPaidAddPetScreen(context, ref),
          );
        }

        // ── 반려동물 있음: 선택된 반려동물 상세 화면 ──────────────────────────
        final pet = ref.watch(selectedPetProvider)!;
        _syncControllers(pet);

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
          children: [
            // 새 반려동물 추가 버튼 (최상단)
            _DashedButton(
              label: context.l10n.addNewPet,
              onTap: () => openPaidAddPetScreen(context, ref),
            ),
            const SizedBox(height: AppSpacing.space4),

            // 사진 영역
            _PhotoSection(pet: pet, onTap: () => _pickPhoto(pet)),
            const SizedBox(height: AppSpacing.space4),

            // 기본 정보
            _SectionCard(
              title: context.l10n.basicInfo,
              children: [
                _FieldRow(
                  label: context.l10n.name,
                  controller: _nameCtrl,
                  onSave: () => _saveName(pet),
                  isLast: false,
                ),
                _FieldRow(
                  label: context.l10n.breed,
                  controller: _breedCtrl,
                  hint: context.l10n.notEntered,
                  onSave: () => _saveBreed(pet),
                  isLast: false,
                ),
                _DateRow(
                  value: pet.birthDate != null
                      ? du.formatDate(DateTime.parse(pet.birthDate!))
                      : null,
                  onTap: () async {
                    final picked = await showLocalizedDatePicker(
                      context: context,
                      initialDate: pet.birthDate != null
                          ? DateTime.parse(pet.birthDate!)
                          : DateTime.now().subtract(const Duration(days: 365)),
                    );
                    if (picked != null) await _saveBirthDate(pet, picked);
                  },
                  isLast: false,
                ),
                _ReadOnlyRow(
                  label: context.l10n.age,
                  value: '자동 계산 · ${pet.ageLabel}',
                  isLast: false,
                ),
                _GenderRow(
                  value: pet.gender,
                  onChanged: (g) => _saveGender(pet, g),
                  isLast: false,
                ),
                _FieldRow(
                  label: context.l10n.weight,
                  controller: _weightCtrl,
                  hint: context.l10n.notEntered,
                  suffix: 'kg',
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^\d+\.?\d{0,2}')),
                  ],
                  onSave: () => _saveWeight(pet),
                  isLast: false,
                ),
                _NeuteredRow(
                  value: pet.isNeutered,
                  onChanged: (v) => _saveNeutered(pet, v),
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.space4),

            // 식별 정보
            _SectionCard(
              title: context.l10n.idInfo,
              children: [
                _FieldRow(
                  label: context.l10n.microchip,
                  controller: _microchipCtrl,
                  hint: context.l10n.notRegistered,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(15),
                  ],
                  onSave: () => _saveMicrochip(pet),
                  isLast: false,
                ),
                _FieldRow(
                  label: context.l10n.registrationNumber,
                  controller: _regNumCtrl,
                  hint: context.l10n.notRegistered,
                  onSave: () => _saveRegNum(pet),
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.space6),

            // 삭제 버튼
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                onPressed: () => _confirmDelete(pet),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.danger600,
                  side: const BorderSide(color: AppColors.danger200),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                  ),
                ),
                child: Text(
                  context.l10n.deletePetName(pet.name),
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
// Widgets
// ═══════════════════════════════════════════════════════════════════════════════

// ── 빈 상태 (기존 화면 유지) ─────────────────────────────────────────────────

class _EmptyProfileState extends StatelessWidget {
  final VoidCallback onAdd;
  const _EmptyProfileState({required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.space8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🐾', style: TextStyle(fontSize: 56)),
            const SizedBox(height: AppSpacing.space4),
            Text(
              context.l10n.noPetsRegistered,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.gray900,
              ),
            ),
            const SizedBox(height: AppSpacing.space2),
            Text(
              context.l10n.registerPetPrompt,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: AppColors.gray500),
            ),
            const SizedBox(height: AppSpacing.space6),
            ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.add),
              label: Text(context.l10n.registerPetBtn),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary400,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.space6,
                  vertical: AppSpacing.space3,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── 대시 추가 버튼 ─────────────────────────────────────────────────────────────

class _DashedButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _DashedButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        painter: const _DashedPainter(color: AppColors.primary300),
        child: Container(
          height: 44,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, color: AppColors.primary600, size: 16),
              const SizedBox(width: 4),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── 사진 영역 ─────────────────────────────────────────────────────────────────

class _PhotoSection extends StatelessWidget {
  final Pet pet;
  final VoidCallback onTap;
  const _PhotoSection({required this.pet, required this.onTap});

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
                gradient: (pet.profileImagePath == null ||
                        !File(pet.profileImagePath!).existsSync())
                    ? const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [AppColors.primary200, AppColors.primary400],
                      )
                    : null,
                image: (pet.profileImagePath != null &&
                        File(pet.profileImagePath!).existsSync())
                    ? DecorationImage(
                        image: FileImage(File(pet.profileImagePath!)),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              alignment: Alignment.center,
              child: (pet.profileImagePath == null ||
                      !File(pet.profileImagePath!).existsSync())
                  ? Text(pet.speciesEmoji, style: const TextStyle(fontSize: 40))
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

// ── 섹션 카드 ─────────────────────────────────────────────────────────────────

class _SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const _SectionCard({required this.title, required this.children});

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
        ],
      ),
    );
  }
}

// ── 텍스트 입력 행 ────────────────────────────────────────────────────────────

class _FieldRow extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final String? hint;
  final String? suffix;
  final VoidCallback onSave;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool isLast;

  const _FieldRow({
    required this.label,
    required this.controller,
    this.hint,
    this.suffix,
    required this.onSave,
    this.keyboardType,
    this.inputFormatters,
    required this.isLast,
  });

  @override
  State<_FieldRow> createState() => _FieldRowState();
}

class _FieldRowState extends State<_FieldRow> {
  final _focus = FocusNode();
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocus);
  }

  void _onFocus() {
    setState(() => _focused = _focus.hasFocus);
    if (!_focus.hasFocus) widget.onSave();
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocus);
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          color: _focused ? AppColors.primary50 : Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              SizedBox(
                width: 88,
                child: Text(
                  widget.label,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: _focused ? AppColors.primary700 : AppColors.gray500,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: widget.controller,
                        focusNode: _focus,
                        keyboardType: widget.keyboardType,
                        inputFormatters: widget.inputFormatters,
                        style: const TextStyle(
                            fontSize: 14, color: AppColors.gray900),
                        decoration: InputDecoration(
                          hintText: widget.hint,
                          hintStyle: const TextStyle(
                              fontSize: 14, color: AppColors.gray400),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.primary400,
                              width: 1.5,
                            ),
                          ),
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                        ),
                        onEditingComplete: _focus.unfocus,
                      ),
                    ),
                    if (widget.suffix != null) ...[
                      const SizedBox(width: 4),
                      Text(widget.suffix!,
                          style: const TextStyle(
                              fontSize: 13, color: AppColors.gray400)),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.edit_outlined,
                size: 16,
                color: _focused ? AppColors.primary400 : AppColors.gray300,
              ),
            ],
          ),
        ),
        if (!widget.isLast) Container(height: 1, color: AppColors.gray100),
      ],
    );
  }
}

// ── 읽기 전용 행 ──────────────────────────────────────────────────────────────

class _ReadOnlyRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isLast;

  const _ReadOnlyRow({
    required this.label,
    required this.value,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              SizedBox(
                width: 88,
                child: Text(label,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray500)),
              ),
              Expanded(
                child: Text(value,
                    style: const TextStyle(
                        fontSize: 13, color: AppColors.gray400)),
              ),
            ],
          ),
        ),
        if (!isLast) Container(height: 1, color: AppColors.gray100),
      ],
    );
  }
}

// ── 날짜 행 ───────────────────────────────────────────────────────────────────

class _DateRow extends StatelessWidget {
  final String? value;
  final VoidCallback onTap;
  final bool isLast;

  const _DateRow({
    required this.value,
    required this.onTap,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                SizedBox(
                  width: 88,
                  child: Text(context.l10n.birthDate,
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.gray500)),
                ),
                Expanded(
                  child: Text(
                    value ?? context.l10n.notEntered,
                    style: TextStyle(
                      fontSize: 14,
                      color:
                          value != null ? AppColors.gray900 : AppColors.gray400,
                    ),
                  ),
                ),
                const Icon(Icons.calendar_today_outlined,
                    size: 15, color: AppColors.gray300),
              ],
            ),
          ),
        ),
        if (!isLast) Container(height: 1, color: AppColors.gray100),
      ],
    );
  }
}

// ── 성별 행 ───────────────────────────────────────────────────────────────────

class _GenderRow extends StatelessWidget {
  final String? value;
  final ValueChanged<String> onChanged;
  final bool isLast;

  const _GenderRow({
    required this.value,
    required this.onChanged,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: 88,
                child: Text(context.l10n.gender,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray500)),
              ),
              Expanded(
                child: Row(
                  children: [
                    _GenderChip(
                      label: context.l10n.maleSym,
                      selected: value == 'male',
                      onTap: () => onChanged('male'),
                    ),
                    const SizedBox(width: 8),
                    _GenderChip(
                      label: context.l10n.femaleSym,
                      selected: value == 'female',
                      onTap: () => onChanged('female'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (!isLast) Container(height: 1, color: AppColors.gray100),
      ],
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

// ── 중성화 행 ─────────────────────────────────────────────────────────────────

class _NeuteredRow extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool isLast;

  const _NeuteredRow({
    required this.value,
    required this.onChanged,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            children: [
              SizedBox(
                width: 88,
                child: Text(context.l10n.neuteringStatus,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray500)),
              ),
              Expanded(
                child: Text(
                  value ? context.l10n.done : context.l10n.notDone,
                  style: TextStyle(
                    fontSize: 14,
                    color: value ? AppColors.primary700 : AppColors.gray400,
                  ),
                ),
              ),
              Switch(
                value: value,
                onChanged: onChanged,
                activeThumbColor: AppColors.primary400,
              ),
            ],
          ),
        ),
        if (!isLast) Container(height: 1, color: AppColors.gray100),
      ],
    );
  }
}

// ── 대시 테두리 페인터 ────────────────────────────────────────────────────────

class _DashedPainter extends CustomPainter {
  final Color color;
  const _DashedPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    const sw = 1.5;
    const dw = 6.0;
    const ds = 4.0;
    const r = 10.0;

    final paint = Paint()
      ..color = color
      ..strokeWidth = sw
      ..style = PaintingStyle.stroke;

    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(r),
      ));

    final dashPath = Path();
    for (final metric in path.computeMetrics()) {
      double distance = 0;
      while (distance < metric.length) {
        dashPath.addPath(
          metric.extractPath(distance, math.min(distance + dw, metric.length)),
          Offset.zero,
        );
        distance += dw + ds;
      }
    }
    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(_DashedPainter o) => o.color != color;
}
