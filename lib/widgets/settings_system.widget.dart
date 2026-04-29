import 'package:flutter/material.dart';

class SettingsSystem extends StatefulWidget {
  const SettingsSystem({super.key});

  @override
  State<SettingsSystem> createState() => _SettingsSystemState();
}

// Em Dart, enums são definidos com identificadores, não strings.
// Para associar uma string a cada membro do enum, usamos "enhanced enums" (disponível a partir do Dart 2.17).
enum AppearanceOptions {
  system("Sistema"),
  light("Claro"),
  dark("Escuro");

  const AppearanceOptions(this.label);
  final String label;
}

class _SettingsSystemState extends State<SettingsSystem> {
  AppearanceOptions _selectedAppearance = AppearanceOptions.system;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Preferência do usuário")),
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
                initialSelection: _selectedAppearance,
                onSelected: (AppearanceOptions? value) {
                  if (value == null) return;
                  setState(() {
                    _selectedAppearance = value;
                    // TODO: Criar o controller e alterar o tema do app por aqui.
                  });
                },
                dropdownMenuEntries: AppearanceOptions.values
                    .map<DropdownMenuEntry<AppearanceOptions>>((
                      AppearanceOptions appearance,
                    ) {
                      return DropdownMenuEntry<AppearanceOptions>(
                        value: appearance,
                        label: appearance.label,
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
