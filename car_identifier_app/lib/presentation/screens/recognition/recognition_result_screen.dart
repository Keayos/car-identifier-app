import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../../../domain/entities/car.dart';
import '../../../domain/entities/car_recognition_result.dart';
import '../../providers/recognition_provider.dart';
import '../../widgets/car_card.dart';
import '../detail/detail_screen.dart';

class RecognitionResultScreen extends ConsumerStatefulWidget {
  final File image;

  const RecognitionResultScreen({super.key, required this.image});

  @override
  ConsumerState<RecognitionResultScreen> createState() =>
      _RecognitionResultScreenState();
}

class _RecognitionResultScreenState
    extends ConsumerState<RecognitionResultScreen> {
  int? _selectedDoors;
  int? _selectedSeats;

  @override
  Widget build(BuildContext context) {
    final resultAsync = ref.watch(carRecognitionProvider(widget.image));

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
                widget.image,
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
              data: (result) => _buildResult(context, result),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResult(BuildContext context, CarRecognitionResult result) {
    if (!result.hasMatch) {
      return Container(
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
      );
    }

    final cars = result.matchedCars;
    final doorOptions = cars
        .map((c) => c.bodyDoors)
        .whereType<int>()
        .toSet()
        .toList()
      ..sort();
    final seatOptions = cars
        .map((c) => c.bodySeats)
        .whereType<int>()
        .toSet()
        .toList()
      ..sort();

    final filtered = cars.where((c) {
      final doorsOk = _selectedDoors == null || c.bodyDoors == _selectedDoors;
      final seatsOk = _selectedSeats == null || c.bodySeats == _selectedSeats;
      return doorsOk && seatsOk;
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          result.displayGuess,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),

        Row(
          children: [
            Expanded(
              child: _buildDropdown<int>(
                label: 'Doors',
                value: _selectedDoors,
                options: doorOptions,
                onChanged: (v) => setState(() => _selectedDoors = v),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _buildDropdown<int>(
                label: 'Seats',
                value: _selectedSeats,
                options: seatOptions,
                onChanged: (v) => setState(() => _selectedSeats = v),
              ),
            ),
          ],
        ),

        const SizedBox(height: 24),

        if (_selectedDoors != null && _selectedSeats != null) ...[
          Text(
            filtered.isEmpty
                ? 'No matching cars.'
                : '${filtered.length} matching option${filtered.length == 1 ? '' : 's'}',
            style: const TextStyle(
                color: AppColors.textSecondary, fontSize: 13),
          ),
          const SizedBox(height: 12),
          ...filtered.map(
            (car) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CarCard(
                car: car,
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => DetailScreen(car: car)),
                ),
              ),
            ),
          ),
        ] else
          const Text(
            'Select doors and seats to see matching options.',
            style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
          ),
      ],
    );
  }

  Widget _buildDropdown<T>({
    required String label,
    required T? value,
    required List<T> options,
    required ValueChanged<T?> onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.divider),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          isExpanded: true,
          dropdownColor: AppColors.surface,
          hint: Text(label,
              style: const TextStyle(color: AppColors.textSecondary)),
          style: const TextStyle(color: AppColors.textPrimary),
          icon: const Icon(Icons.keyboard_arrow_down,
              color: AppColors.textSecondary),
          items: options
              .map((o) => DropdownMenuItem<T>(
                    value: o,
                    child: Text('$o $label'),
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
