class Car {
  final int id;
  final String makeModel;
  final String? make;
  final String? model;
  final String? trimDescription;
  final String? engineFuelType;
  final double? engineHp;
  final String? engineCylinders;
  final double? engineSize;
  final int? engineRpm;
  final String? engineDriveType;
  final String? engineTransmission;
  final String? bodyType;
  final int? bodyDoors;
  final int? bodySeats;

  const Car({
    required this.id,
    required this.makeModel,
    this.make,
    this.model,
    this.trimDescription,
    this.engineFuelType,
    this.engineHp,
    this.engineCylinders,
    this.engineSize,
    this.engineRpm,
    this.engineDriveType,
    this.engineTransmission,
    this.bodyType,
    this.bodyDoors,
    this.bodySeats,
  });

  String get displayName => makeModel;
}
