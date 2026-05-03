import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    fontFamily: 'Montserrat',
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Color(0xFF121212),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    ),
    cardTheme: CardThemeData(color: Colors.green[900]),
    listTileTheme: ListTileThemeData(textColor: Colors.white),

    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Color(0xFF121212)),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    ),

    dividerTheme: DividerThemeData(color: Colors.white),

    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: Colors.white),
    ),

    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(Colors.white),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.white),
      floatingLabelStyle: TextStyle(color: Colors.white),
    ),

    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: Colors.green,
      linearTrackColor: Colors.white,
      linearMinHeight: 6,
    ),

    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(Colors.grey[900]),
      ),
      textStyle: const TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
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
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: UnderlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.zero,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 2,
      ),
    ),

    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: Colors.green,
      linearTrackColor: Colors.grey,
      linearMinHeight: 6,
    ),

    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: Colors.black),
    ),

    dividerTheme: DividerThemeData(color: Colors.black),

    textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),

    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(Colors.white),
      ),
      textStyle: const TextStyle(color: Colors.black, fontSize: 18),
    ),
  );
}
