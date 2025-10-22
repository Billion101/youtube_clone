import 'package:flutter/material.dart';

/// App-wide color constants
/// Centralized place to manage all colors used in the app
class AppColors {
  // Primary colors
  static const Color primary = Colors.red;
  static const Color primaryDark = Color(0xFFD32F2F);

  // Background colors
  static const Color backgroundLight = Colors.white;
  static const Color backgroundDark = Colors.black;
  static const Color cardBackground = Color(0xFFF5F5F5);

  // Text colors
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Color(0xFF757575);
  static const Color textOnDark = Colors.white;

  // Icon colors
  static const Color iconPrimary = Colors.black;
  static const Color iconSecondary = Color(0xFF757575);
  static const Color iconOnDark = Colors.white;

  // Accent colors
  static const Color accent = Colors.blue;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color error = Colors.red;

  // Overlay colors
  static const Color overlay = Color(0x80000000); // 50% black
  static const Color shimmer = Color(0xFFE0E0E0);
}
