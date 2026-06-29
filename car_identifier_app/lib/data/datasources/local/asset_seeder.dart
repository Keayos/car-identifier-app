import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import '../../models/car_model.dart';

class AssetSeeder {
  final Isar _isar;
  AssetSeeder(this._isar);

  Future<void> seedIfEmpty() async {
    final count = await _isar.carModels.count();
    if (count > 0) return;

    final jsonString = await rootBundle.loadString('assets/data/cars.json');
    final List<dynamic> jsonList = jsonDecode(jsonString);

    final cars = jsonList.map((e) {
      return CarModel()
        ..makeModel = (e['Make Model'] ?? '').toString().trim()
        ..year = _parseInt(e['Year'])
        ..engineFuelType = _str(e['Engine Fuel Type'])
        ..engineHp = _parseDouble(e['Engine HP'])
        ..engineCylinders = _parseInt(e['Engine Cylinders'])
        ..transmissionType = _str(e['Transmission Type'])
        ..drivenWheels = _str(e['Driven_Wheels'])
        ..numberOfDoors = _parseInt(e['Number of Doors'])
        ..vehicleSize = _str(e['Vehicle Size']);
    }).toList();

    await _isar.writeTxn(() async {
      await _isar.carModels.putAll(cars);
    });

    print('[AssetSeeder] Seeded ${cars.length} cars.');
  }

  String? _str(dynamic v) {
    if (v == null) return null;
    final s = v.toString().trim();
    return s.isEmpty ? null : s;
  }

  int _parseInt(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    return int.tryParse(v.toString()) ?? 0;
  }

  double? _parseDouble(dynamic v) {
    if (v == null) return null;
    if (v is double) return v;
    if (v is int) return v.toDouble();
    return double.tryParse(v.toString());
  }
}
