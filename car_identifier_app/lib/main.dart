import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'data/models/car_model.dart';
import 'data/datasources/local/asset_seeder.dart';
import 'presentation/screens/splash/splash_screen.dart';
import 'core/constants/app_colors.dart';

late Isar isar;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();

  isar = await Isar.open([CarModelSchema], directory: dir.path);

  await AssetSeeder(isar).seedIfEmpty();

  runApp(const ProviderScope(child: CarIdentifierApp()));
}

class CarIdentifierApp extends StatelessWidget {
  const CarIdentifierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Identifier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.accent,
          surface: AppColors.surface,
        ),
        fontFamily: 'Outfit',
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
