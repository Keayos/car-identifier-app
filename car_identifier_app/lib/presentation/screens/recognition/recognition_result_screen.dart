import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../../../domain/entities/car_recognition_result.dart';
import '../../providers/recognition_provider.dart';

class RecognitionResultScreen extends ConsumerWidget {
  final File image;

  const RecognitionResultScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultAsync = ref.watch(carRecognitionProvider(image));

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
        title: const Text(
          'Identification Result',
          style: TextStyle(
              color: AppColors.textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.file(
                image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),

            resultAsync.when(
              loading: () => const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Center(
                  child: Column(
                    children: [
                      CircularProgressIndicator(
                          color: AppColors.accent, strokeWidth: 2),
                      SizedBox(height: 16),
                      Text(
                        'Identifying car…',
                        style: TextStyle(color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                ),
              ),
              error: (e, stack) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.error),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Recognition failed:',
                        style: TextStyle(
                            color: AppColors.error,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      SelectableText(
                        e.toString(),
                        style: const TextStyle(
                            color: AppColors.textPrimary, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              data: (result) => _buildResult(result),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResult(CarRecognitionResult result) {
    if (!result.hasMatch) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.divider),
            ),
            child: Row(
              children: [
                const Icon(Icons.info_outline,
                    color: AppColors.textSecondary, size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Not found in database. AI guess: ${result.displayGuess}',
                    style: const TextStyle(
                        color: AppColors.textSecondary, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    final car = result.matchedCar!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle('General'),
        const SizedBox(height: 12),
        _specRow('Car Model', car.makeModel),
        if (car.trimDescription != null)
          _specRow('Trim', car.trimDescription!),
        if (car.bodyType != null) _specRow('Body Type', car.bodyType!),
        if (car.bodyDoors != null) _specRow('Doors', car.bodyDoors!.toString()),
        if (car.bodySeats != null) _specRow('Seats', car.bodySeats!.toString()),

        const SizedBox(height: 24),
        _sectionTitle('Engine'),
        const SizedBox(height: 12),
        if (car.engineFuelType != null)
          _specRow('Fuel Type', car.engineFuelType!),
        if (car.engineHp != null)
          _specRow('Horsepower', '${car.engineHp!.toStringAsFixed(0)} HP'),
        if (car.engineCylinders != null)
          _specRow('Cylinders', car.engineCylinders!),
        if (car.engineSize != null)
          _specRow('Engine Size', '${car.engineSize!.toStringAsFixed(1)} L'),
        if (car.engineRpm != null) _specRow('RPM', car.engineRpm!.toString()),

        const SizedBox(height: 24),
        _sectionTitle('Drivetrain'),
        const SizedBox(height: 12),
        if (car.engineTransmission != null)
          _specRow('Transmission', car.engineTransmission!),
        if (car.engineDriveType != null)
          _specRow('Drive Type', car.engineDriveType!),
      ],
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
