import 'package:isar/isar.dart';

part 'car_model.g.dart';

@Collection()
class CarModel {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value, caseSensitive: false)
  late String make;

  @Index(type: IndexType.value, caseSensitive: false)
  late String model;

  @Index(type: IndexType.value, caseSensitive: false)
  late String category;

  late int year;

  // Phase 2 hook — matches TFLite label map output
  @Index(type: IndexType.value, caseSensitive: false)
  String? mlLabel;
}
