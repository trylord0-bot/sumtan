import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/pet_model.dart';
import '../data/pet_repository.dart';

final petRepositoryProvider = Provider((ref) => PetRepository());

final petsProvider = StateNotifierProvider<PetsNotifier, AsyncValue<List<Pet>>>(
  (ref) => PetsNotifier(ref.watch(petRepositoryProvider)),
);

final selectedPetIndexProvider = StateProvider<int>((ref) => 0);

final selectedPetProvider = Provider<Pet?>((ref) {
  final petsAsync = ref.watch(petsProvider);
  final idx = ref.watch(selectedPetIndexProvider);
  return petsAsync.whenOrNull(
    data: (pets) => pets.isEmpty ? null : pets[idx.clamp(0, pets.length - 1)],
  );
});

class PetsNotifier extends StateNotifier<AsyncValue<List<Pet>>> {
  PetsNotifier(this._repo) : super(const AsyncValue.loading()) {
    load();
  }

  final PetRepository _repo;

  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _repo.getAll());
  }

  Future<void> add(Pet pet) async {
    await _repo.insert(pet);
    await load();
  }

  Future<void> update(Pet pet) async {
    await _repo.update(pet);
    await load();
  }

  Future<void> remove(int id) async {
    await _repo.delete(id);
    await load();
  }
}
