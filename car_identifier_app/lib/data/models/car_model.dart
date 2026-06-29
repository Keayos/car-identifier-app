import 'package:isar/isar.dart';

part 'car_model.g.dart';

@Collection()
class CarModel {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value, caseSensitive: false)
  late String makeModel;

  late int year;

  String? engineFuelType;
  double? engineHp;
  int? engineCylinders;

  @Index(type: IndexType.value, caseSensitive: false)
  String? transmissionType;

  @Index(type: IndexType.value, caseSensitive: false)
  String? drivenWheels;

  int? numberOfDoors;

  @Index(type: IndexType.value, caseSensitive: false)
  String? vehicleSize;
}
