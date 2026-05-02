import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/record_model.dart';
import '../data/record_repository.dart';
import '../../pet/provider/pet_provider.dart';

final recordRepositoryProvider = Provider((ref) => RecordRepository());

// 오늘의 기록 (홈 화면)
final todayRecordsProvider =
    FutureProvider.autoDispose<List<Record>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  if (pet == null || pet.id == null) return [];
  return ref.read(recordRepositoryProvider).getTodayByPet(pet.id!);
});

// 최근 기록 (홈 화면 리스트)
final recentRecordsProvider =
    FutureProvider.autoDispose<List<Record>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  if (pet == null || pet.id == null) return [];
  return ref.read(recordRepositoryProvider).getRecentByPet(pet.id!, limit: 4);
});

// 선택된 날짜 (일지 화면)
final selectedDateProvider = StateProvider<DateTime>(
  (ref) => DateTime.now(),
);

// 선택 월의 기록 (일지 화면 캘린더 도트)
final monthRecordsProvider =
    FutureProvider.autoDispose<List<Record>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  final date = ref.watch(selectedDateProvider);
  if (pet == null || pet.id == null) return [];
  return ref
      .read(recordRepositoryProvider)
      .getByPetAndMonth(pet.id!, date.year, date.month);
});

// 선택된 날짜의 기록 (일지 화면 리스트)
final selectedDateRecordsProvider =
    FutureProvider.autoDispose<List<Record>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  final date = ref.watch(selectedDateProvider);
  if (pet == null || pet.id == null) return [];
  return ref
      .read(recordRepositoryProvider)
      .getByPetAndDate(pet.id!, date);
});

class RecordNotifier extends StateNotifier<void> {
  RecordNotifier(this._repo) : super(null);
  final RecordRepository _repo;

  Future<void> add(Record record) => _repo.insert(record);
  Future<void> update(Record record) => _repo.update(record);
  Future<void> remove(int id) => _repo.delete(id);
}

final recordNotifierProvider = StateNotifierProvider<RecordNotifier, void>(
  (ref) => RecordNotifier(ref.read(recordRepositoryProvider)),
);
