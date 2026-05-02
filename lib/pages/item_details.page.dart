import 'package:flutter/material.dart';
import 'package:lista_de_compras/model/item.model.dart';
import 'package:lista_de_compras/model/item_list.model.dart';
import 'package:lista_de_compras/widgets/add_item.widget.dart';

class ItemDetailsPage extends StatefulWidget {
  const ItemDetailsPage({super.key, required this.itemList});

  final ItemList itemList;

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  void addItem() async {
    final newItem = await showModalBottomSheet<Item>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => const AddItem(),
    );

    if (newItem != null) {
      setState(() {
        widget.itemList.items.add(newItem);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final notMarked = widget.itemList.items.where(
      (item) => item.isBuy == false,
    );
    final marked = widget.itemList.items.where((item) => item.isBuy == true);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.itemList.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(thickness: 0),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.itemList.items.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            key: Key("productCheckbox"),
                            value: widget.itemList.items[index].isBuy,
                            onChanged: (value) {
                              setState(() {
                                widget.itemList.items[index].changeStatus(
                                  value!,
                                );
                              });
                            },
                            activeColor: Colors.green,
                            shape: const CircleBorder(),
                            side: const BorderSide(color: Colors.blue),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            widget.itemList.items[index].name,
                            style: TextStyle(
                              fontSize: 18,
                              color: widget.itemList.items[index].isBuy == true
                                  ? Colors.grey
                                  : Theme.of(context).brightness ==
                                        Brightness.dark
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          " R\$ ${widget.itemList.items[index].value.toStringAsFixed(2)}",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Não marcados", style: TextStyle(fontSize: 18)),
                    Text(
                      "R\$ ${notMarked.fold(0.0, (acc, element) => acc + element.value).toStringAsFixed(2)}",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Marcados", style: TextStyle(fontSize: 18)),
                    Text(
                      "R\$ ${marked.fold(0.0, (acc, element) => acc + element.value).toStringAsFixed(2)}",
                      style: TextStyle(color: Colors.green, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 45,
        child: FloatingActionButton.extended(
          key: Key("addNewItemBtn"),
          label: Text("Adicionar"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: addItem,
        ),
      ),
    );
  }
}
