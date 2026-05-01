import 'package:flutter/material.dart';

class ThemeController {
  // O ValueNotifier agora é uma propriedade encapsulada na classe
  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
    ThemeMode.system,
  );

  // Método responsável por alterar o tema.
  // Futuramente, você adicionará o SharedPreferences aqui!
  void changeTheme(ThemeMode mode) {
    themeNotifier.value = mode;
  }
}

// Instância global do controller para uso no app (usando o padrão Singleton simples)
// Se futuramente você instalar o GetIt ou Provider, poderá remover essa variável global.
final themeController = ThemeController();
