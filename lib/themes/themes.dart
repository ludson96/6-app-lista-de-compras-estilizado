import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData.dark();
}

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),
    cardTheme: CardThemeData(color: Colors.white, elevation: 3),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
  );
}
