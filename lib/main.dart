import 'package:flutter/material.dart';
import 'constants/app_colors.dart';
import 'screens/write_review_step1_screen.dart';
import 'screens/write_review_step2_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Dev Task 1',
      theme: ThemeData(
        primaryColor: AppColors.colorFF7030,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.colorFF7030,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WriteReviewStep1Screen(),
        '/step2': (context) => const WriteReviewStep2Screen(),
      },
    );
  }
}