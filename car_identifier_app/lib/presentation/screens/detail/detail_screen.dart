import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../domain/entities/car.dart';

class DetailScreen extends StatelessWidget {
  final Car car;

  const DetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.textPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          car.displayName,
          style: const TextStyle(
              color: AppColors.textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle('General'),
            const SizedBox(height: 12),
            _specRow('Car Model', car.makeModel),
            _specRow('Year', car.year.toString()),
            if (car.vehicleSize != null)
              _specRow('Vehicle Size', car.vehicleSize!),

            const SizedBox(height: 24),
            _sectionTitle('Engine'),
            const SizedBox(height: 12),
            if (car.engineFuelType != null)
              _specRow('Fuel Type', car.engineFuelType!),
            if (car.engineHp != null)
              _specRow('Horsepower', '${car.engineHp!.toStringAsFixed(0)} HP'),
            if (car.engineCylinders != null)
              _specRow('Cylinders', car.engineCylinders!.toString()),

            const SizedBox(height: 24),
            _sectionTitle('Drivetrain'),
            const SizedBox(height: 12),
            if (car.transmissionType != null)
              _specRow('Transmission', car.transmissionType!),
            if (car.drivenWheels != null)
              _specRow('Driven Wheels', car.drivenWheels!),
            if (car.numberOfDoors != null)
              _specRow('Doors', car.numberOfDoors!.toString()),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) => Text(
        title,
        style: const TextStyle(
          color: AppColors.accent,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),
      );

  Widget _specRow(String label, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: const TextStyle(
                    color: AppColors.textSecondary, fontSize: 14)),
            Flexible(
              child: Text(
                value,
                style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      );
}
