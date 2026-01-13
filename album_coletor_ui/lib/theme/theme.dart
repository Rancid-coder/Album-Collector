import 'package:flutter/material.dart';

final theme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.orange[800],
  colorScheme: ColorScheme.dark(
    primary: Colors.orange[700]!,
    onPrimary: Colors.black,
    secondary: Colors.amber[600]!,
    onSecondary: Colors.black,
    surface: Colors.grey[900]!,
    onSurface: Colors.white,
    error: Colors.red[400]!,
    onError: Colors.black,
  ),
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
      letterSpacing: 1.5,
    ),
  ),
  cardTheme: CardTheme(
    color: Colors.grey[900],
    elevation: 8,
    shadowColor: Colors.orange[900]!.withOpacity(0.5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(
        color: Colors.orange[700]!.withOpacity(0.2),
        width: 1,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange[700],
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      elevation: 6,
      shadowColor: Colors.orange[900]!.withOpacity(0.6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        fontFamily: 'Poppins',
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.orange[400],
      textStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[900],
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey[800]!),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey[800]!),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.orange[600]!, width: 2),
    ),
    labelStyle: TextStyle(
      color: Colors.orange[300],
      fontFamily: 'Poppins',
    ),
    hintStyle: TextStyle(
      color: Colors.grey[600],
      fontFamily: 'Poppins',
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.orange[600],
    size: 24,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey[900],
    selectedItemColor: Colors.orange[500],
    unselectedItemColor: Colors.grey[600],
    type: BottomNavigationBarType.fixed,
    elevation: 16,
    selectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
    unselectedLabelStyle: const TextStyle(
      fontFamily: 'Poppins',
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.orange[600],
    foregroundColor: Colors.white,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.orange[900]!.withOpacity(0.3),
    thickness: 1,
    space: 1,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
      letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      fontSize: 56.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
      letterSpacing: -0.5,
    ),
    headlineMedium: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      letterSpacing: 0.25,
    ),
    titleLarge: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      letterSpacing: 0,
    ),
    titleMedium: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      letterSpacing: 0.15,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontFamily: 'Poppins',
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontFamily: 'Poppins',
      letterSpacing: 0.25,
    ),
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      letterSpacing: 1.25,
    ),
  ),
);
