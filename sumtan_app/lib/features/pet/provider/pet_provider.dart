import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../record/data/record_model.dart';
import '../../record/data/record_repository.dart';
import '../data/pet_model.dart';
import '../data/pet_repository.dart';

final petRepositoryProvider = Provider((ref) => PetRepository());
final _recordRepositoryProvider = Provider((ref) => RecordRepository());

final petsProvider = StateNotifierProvider<PetsNotifier, AsyncValue<List<Pet>>>(
  (ref) => PetsNotifier(
    ref.watch(petRepositoryProvider),
    ref.watch(_recordRepositoryProvider),
  ),
);

// ID 기반 펫 선택 (null = 첫 번째 펫 자동 선택)
final selectedPetIdProvider = StateProvider<int?>((ref) => null);

final selectedPetProvider = Provider<Pet?>((ref) {
  final id = ref.watch(selectedPetIdProvider);
  final pets = ref.watch(petsProvider).valueOrNull ?? [];
  if (pets.isEmpty) return null;
  if (id == null) return pets.first;
  try {
    return pets.firstWhere((p) => p.id == id);
  } catch (_) {
    return pets.first;
  }
});

class PetsNotifier extends StateNotifier<AsyncValue<List<Pet>>> {
  PetsNotifier(this._repo, this._recordRepo)
      : super(const AsyncValue.loading()) {
    load();
  }

  final PetRepository _repo;
  final RecordRepository _recordRepo;

  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _repo.getAll());
  }

  /// 새 펫 추가. 반환값(새 id)으로 selectedPetIdProvider를 업데이트할 것.
  Future<int> add(Pet pet) async {
    final newId = await _repo.insert(pet);
    if (pet.weight != null) {
      final now = DateTime.now().toIso8601String();
      await _recordRepo.insert(Record(
        petId: newId,
        category: 'weight',
        recordedAt: now,
        dataJson: {
          'weight_kg': pet.weight,
          'method': 'profile',
          'source': 'profile',
        },
        createdAt: now,
      ));
    }
    await load();
    return newId;
  }

  /// 체중이 변경됐을 때 records에 자동 기록.
  Future<void> update(Pet pet, {double? previousWeight}) async {
    await _repo.update(pet);
    if (pet.weight != null && pet.weight != previousWeight) {
      final now = DateTime.now().toIso8601String();
      await _recordRepo.insert(Record(
        petId: pet.id!,
        category: 'weight',
        recordedAt: now,
        dataJson: {
          'weight_kg': pet.weight,
          'method': 'profile',
          'source': 'profile',
        },
        createdAt: now,
      ));
    }
    await load();
  }

  Future<void> remove(int id) async {
    await _repo.delete(id);
    await load();
  }
}
