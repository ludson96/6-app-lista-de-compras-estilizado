import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            key: Key("imageWithoutList"),
            "assets/images/lista-de-compras.png",
            height: 100,
          ),
          SizedBox(height: 30),
          Text("Crie sua primeira lista", style: TextStyle(fontSize: 16)),
          Text("Toque no botão azul", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
