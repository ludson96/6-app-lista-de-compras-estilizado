import 'package:flutter/material.dart';
import 'package:lista_de_compras/model/item_list.model.dart';

class AddList extends StatefulWidget {
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  final nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void addList() {
    final itemList = ItemList(name: nameController.text);

    Navigator.of(context).pop(itemList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Color(0xFF121212)
          : Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: formKey,
                child: TextFormField(
                  key: Key("inputNameList"),
                  controller: nameController,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    label: Text("Nome da lista"),
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  key: Key("btnBackList"),
                  onPressed: () {
                    return Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    side: const BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text("Voltar", style: TextStyle(color: Colors.white)),
                ),
                FilledButton(
                  key: Key("btnCreateList"),
                  onPressed: addList,
                  style: FilledButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                  ),
                  child: Text("Criar"),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
