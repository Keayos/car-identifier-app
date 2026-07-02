import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../domain/entities/car.dart';
import '../../widgets/dubizzle_search_button.dart';

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
            if (car.trimDescription != null)
              _specRow('Trim', car.trimDescription!),
            if (car.bodyType != null)
              _specRow('Body Type', car.bodyType!),
            if (car.bodyDoors != null)
              _specRow('Doors', car.bodyDoors!.toString()),
            if (car.bodySeats != null)
              _specRow('Seats', car.bodySeats!.toString()),

            const SizedBox(height: 24),
            _sectionTitle('Engine'),
            const SizedBox(height: 12),
            if (car.engineFuelType != null)
              _specRow('Fuel Type', car.engineFuelType!),
            if (car.engineHp != null)
              _specRow('Horsepower', '${car.engineHp!.toStringAsFixed(0)} HP'),
            if (car.engineCylinders != null)
              _specRow('Cylinders', car.engineCylinders!.toString()),
            if (car.engineSize != null)
              _specRow('Engine Size', '${car.engineSize!.toStringAsFixed(1)} L'),
            if (car.engineRpm != null)
              _specRow('RPM', car.engineRpm!.toString()),

            const SizedBox(height: 24),
            _sectionTitle('Drivetrain'),
            const SizedBox(height: 12),
            if (car.engineTransmission != null)
              _specRow('Transmission', car.engineTransmission!),
            if (car.engineDriveType != null)
              _specRow('Drive Type', car.engineDriveType!),

            const SizedBox(height: 32),
            DubizzleSearchButton(query: '${car.make ?? ''} ${car.model ?? ''}'.trim()),
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
