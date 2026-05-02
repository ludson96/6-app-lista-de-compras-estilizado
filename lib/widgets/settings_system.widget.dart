import 'package:flutter/material.dart';
import 'package:lista_de_compras/stores/theme.store.dart';

// Em Dart, enums são definidos com identificadores, não strings.
// Para associar uma string a cada membro do enum, usamos "enhanced enums" (disponível a partir do Dart 2.17).
enum AppearanceOptions {
  system("Sistema", ThemeMode.system),
  light("Claro", ThemeMode.light),
  dark("Escuro", ThemeMode.dark);

  const AppearanceOptions(this.label, this.themeMode);
  final String label;
  final ThemeMode themeMode;
}

class SettingsSystem extends StatelessWidget {
  const SettingsSystem({super.key});

  @override
  Widget build(BuildContext context) {
    // Calcula a seleção inicial no momento em que a tela é construída,
    // baseando-se no valor atual salvo no ValueNotifier global.
    final AppearanceOptions initialAppearance = AppearanceOptions.values
        .firstWhere(
          (option) => option.themeMode == themeController.themeNotifier.value,
          orElse: () => AppearanceOptions.system,
        );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Preferência do usuário",
          style: TextStyle(fontWeight: .w500),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Aparência"),
              DropdownMenu<AppearanceOptions>(
                inputDecorationTheme: const InputDecorationTheme(
                  border: InputBorder.none,
                ),
                initialSelection: initialAppearance,
                onSelected: (AppearanceOptions? value) {
                  if (value == null) return;
                  themeController.changeTheme(value.themeMode);
                },
                dropdownMenuEntries: AppearanceOptions.values
                    .map<DropdownMenuEntry<AppearanceOptions>>((
                      AppearanceOptions appearance,
                    ) {
                      return DropdownMenuEntry<AppearanceOptions>(
                        value: appearance,
                        label: appearance.label,
                        style: TextButton.styleFrom(
                          foregroundColor: Theme.of(context).textTheme.bodyLarge?.color, // Garante a cor correta baseada no tema atual
                          textStyle: const TextStyle(
                            fontSize: 18,
                          ), // Aumenta o texto das opções da lista
                        ),
                      );
                    })
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
