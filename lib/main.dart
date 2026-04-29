import 'package:flutter/material.dart';
import 'package:lista_de_compras/pages/home.page.dart';
import 'package:lista_de_compras/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Lista de Compras',
      themeMode: ThemeMode.light,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: Home(),
    );
  }
}
