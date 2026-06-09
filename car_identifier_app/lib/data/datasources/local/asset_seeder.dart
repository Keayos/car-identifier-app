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

    final jsonString =
        await rootBundle.loadString('assets/data/cars.json');
    final List<dynamic> jsonList = jsonDecode(jsonString);

    final cars = jsonList.map((e) {
      return CarModel()
        ..make     = e['make']     as String
        ..model    = e['model']    as String
        ..category = e['category'] as String
        ..year     = e['year']     as int;
    }).toList();

    await _isar.writeTxn(() async {
      await _isar.carModels.putAll(cars);
    });

    print('[AssetSeeder] Seeded ${cars.length} cars.');
  }
}
