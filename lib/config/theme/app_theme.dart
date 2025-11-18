import 'package:flutter/material.dart';

class AppTheme {
  // Color scheme - Modern teal/cyan gradient
  static const Color primaryColor = Color(0xFF00BCD4);
  static const Color secondaryColor = Color(0xFF0097A7);
  static const Color accentColor = Color(0xFF00E5FF);
  static const Color backgroundColor = Color(0xFF006064);
  
  // Dark theme colors
  static const Color darkBackground = Color(0xFF1A1F2E);
  static const Color cardBackground = Color(0xFF252B3B);
  
  // Stats card colors
  static const Color blueCardStart = Color(0xFF6366F1);
  static const Color blueCardEnd = Color(0xFF8B5CF6);
  
  static const Color purpleCardStart = Color(0xFF8B5CF6);
  static const Color purpleCardEnd = Color(0xFFA855F7);
  
  static const Color greenCardStart = Color(0xFF10B981);
  static const Color greenCardEnd = Color(0xFF059669);
  
  static const Color redCardStart = Color(0xFFEF4444);
  static const Color redCardEnd = Color(0xFFDC2626);
  
  static const Color orangeCardStart = Color(0xFFF59E0B);
  static const Color orangeCardEnd = Color(0xFFD97706);
  
  static const Color tealCardStart = Color(0xFF14B8A6);
  static const Color tealCardEnd = Color(0xFF0D9488);
  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light(
  primary: primaryColor,
  secondary: secondaryColor,
  surface: Colors.white,
  surfaceContainerLowest: Colors.white, // replaces deprecated background
),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBackground,
    colorScheme: const ColorScheme.dark(
  primary: primaryColor,
  secondary: secondaryColor,
  surface: cardBackground,
  surfaceContainerLowest: darkBackground, // replaces deprecated background
),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white70,
      ),
    ),
  );
}