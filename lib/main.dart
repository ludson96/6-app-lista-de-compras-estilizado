import 'package:flutter/material.dart';
import 'package:lista_de_compras/pages/home.page.dart';
import 'package:lista_de_compras/stores/theme.store.dart';
import 'package:lista_de_compras/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeController.themeNotifier,
      builder: (context, currentMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App Lista de Compras',
          themeMode: currentMode,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          home: Home(),
        );
      },
    );
  }
}
