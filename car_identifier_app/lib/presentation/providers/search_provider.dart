import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart' show isar;
import '../../data/datasources/local/isar_car_datasource.dart';
import '../../data/repositories/car_repository_impl.dart';
import '../../domain/entities/car.dart';
import '../../domain/entities/make_group.dart';
import '../../domain/usecases/search_cars.dart';
import '../../domain/usecases/get_car_detail.dart';
import '../../domain/usecases/get_make_groups.dart';
import '../../domain/usecases/get_cars_by_make.dart';

// ── datasource ────────────────────────────────────────────
final isarCarDatasourceProvider = Provider<IsarCarDatasource>(
  (_) => IsarCarDatasource(isar),
);

// ── repository ────────────────────────────────────────────
final carRepositoryProvider = Provider<CarRepositoryImpl>(
  (ref) => CarRepositoryImpl(ref.watch(isarCarDatasourceProvider)),
);

// ── use cases ─────────────────────────────────────────────
final searchCarsUsecaseProvider = Provider<SearchCars>(
  (ref) => SearchCars(ref.watch(carRepositoryProvider)),
);

final getCarDetailUsecaseProvider = Provider<GetCarDetail>(
  (ref) => GetCarDetail(ref.watch(carRepositoryProvider)),
);

final getMakeGroupsUsecaseProvider = Provider<GetMakeGroups>(
  (ref) => GetMakeGroups(ref.watch(carRepositoryProvider)),
);

final getCarsByMakeUsecaseProvider = Provider<GetCarsByMake>(
  (ref) => GetCarsByMake(ref.watch(carRepositoryProvider)),
);

// ── search query notifier (debounced in the widget) ───────
final searchQueryProvider = StateProvider<String>((_) => '');

// ── search results ────────────────────────────────────────
final searchResultsProvider = FutureProvider<List<Car>>((ref) {
  final query = ref.watch(searchQueryProvider);
  final usecase = ref.watch(searchCarsUsecaseProvider);
  return usecase(query);
});

// ── make groups (home screen browse view) ──────────────────
final makeGroupsProvider = FutureProvider<List<MakeGroup>>((ref) {
  final usecase = ref.watch(getMakeGroupsUsecaseProvider);
  return usecase();
});

// ── cars filtered by make id ────────────────────────────────
final carsByMakeProvider =
    FutureProvider.family<List<Car>, int>((ref, makeId) {
  final usecase = ref.watch(getCarsByMakeUsecaseProvider);
  return usecase(makeId);
});
