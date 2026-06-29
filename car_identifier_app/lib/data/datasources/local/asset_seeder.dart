import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';
import '../../models/car_model.dart';

class AssetSeeder {
  final Isar _isar;
  AssetSeeder(this._isar);

  Future<void> seedIfEmpty() async {
    // DEBUG: force reseed to apply new schema data
    await _isar.writeTxn(() async {
      await _isar.carModels.clear();
    });

    final jsonString = await rootBundle.loadString('assets/data/cars.json');
    final List<dynamic> jsonList = jsonDecode(jsonString);

    final cars = jsonList.map((e) {
      return CarModel()
        ..makeModel          = (e['Make Model'] ?? '').toString().trim()
        ..make               = _str(e['Make'])
        ..model              = _str(e['Model'])
        ..trimDescription    = _str(e['Trim Description'])
        ..engineFuelType     = _str(e['Engine Fuel Type'])
        ..engineHp           = _parseDouble(e['Engine Horsepower Hp'])
        ..engineCylinders    = _str(e['Engine Cylinders'])
        ..engineSize         = _parseDouble(e['Engine Size'])
        ..engineRpm          = _parseInt(e['Engine Rpm'])
        ..engineDriveType    = _str(e['Engine Drive Type'])
        ..engineTransmission = _str(e['Engine Transmission'])
        ..bodyType           = _str(e['Body Type'])
        ..bodyDoors          = _parseInt(e['Body Doors'])
        ..bodySeats          = _parseInt(e['Body Seats']);
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
