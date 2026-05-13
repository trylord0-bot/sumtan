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
  return ref.read(recordRepositoryProvider).getByPetAndDate(pet.id!, date);
});

// 체중 기간 토글 (7일 or 30일)
final weightPeriodProvider = StateProvider<int>((ref) => 7);

// 통계 기간 토글 (7일 or 30일)
final statsPeriodProvider = StateProvider<int>((ref) => 7);

// 체중 추세 기록
final weightHistoryProvider =
    FutureProvider.autoDispose<List<Record>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  final period = ref.watch(weightPeriodProvider);
  if (pet == null || pet.id == null) return [];
  return ref
      .read(recordRepositoryProvider)
      .getWeightHistoryByPet(pet.id!, days: period);
});

// 배변 통계
final weeklyPoopStatsProvider =
    FutureProvider.autoDispose<Map<DateTime, int>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  final days = ref.watch(statsPeriodProvider);
  if (pet == null || pet.id == null) return {};
  return ref
      .read(recordRepositoryProvider)
      .getWeeklyPoopCountsByPet(pet.id!, days: days);
});

// 음수 통계 (횟수)
final weeklyWaterStatsProvider =
    FutureProvider.autoDispose<Map<DateTime, int>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  final days = ref.watch(statsPeriodProvider);
  if (pet == null || pet.id == null) return {};
  return ref
      .read(recordRepositoryProvider)
      .getWeeklyWaterStatsByPet(pet.id!, days: days);
});

// 식사 통계
final weeklyMealStatsProvider =
    FutureProvider.autoDispose<Map<DateTime, int>>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  final days = ref.watch(statsPeriodProvider);
  if (pet == null || pet.id == null) return {};
  return ref
      .read(recordRepositoryProvider)
      .getWeeklyMealCountsByPet(pet.id!, days: days);
});

// 가장 최근 기록
final lastRecordProvider = FutureProvider.autoDispose<Record?>((ref) async {
  final pet = ref.watch(selectedPetProvider);
  if (pet == null || pet.id == null) return null;
  return ref.read(recordRepositoryProvider).getLastRecordByPet(pet.id!);
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
