import 'package:flutter/material.dart';
import 'core/app_colors.dart';
import 'core/app_constants.dart';
import 'screens/main_screen.dart';

/// Entry point of the YouTube Clone app
void main() {
  runApp(const YouTubeCloneApp());
}

/// Root widget of the application
/// Sets up the app theme and navigation
class YouTubeCloneApp extends StatelessWidget {
  const YouTubeCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: _buildAppTheme(),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

  /// Builds the app theme with custom colors and styling
  ThemeData _buildAppTheme() {
    return ThemeData(
      primarySwatch: Colors.red,
      primaryColor: AppColors.primary,
      useMaterial3: true,
      // You can add more theme customizations here
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundLight,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.iconSecondary,
        backgroundColor: AppColors.backgroundLight,
      ),
    );
  }
}
