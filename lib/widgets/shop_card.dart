import 'package:flutter/material.dart';
import 'package:shopping_list/screens/shoplist_form.dart'; 

class ShopItem {
  final String name;

  ShopItem(this.name);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text('Kamu telah menekan tombol ${item.name}!')));

        if (item.name == "Tambah Produk") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShopFormPage()));
        }
      },
      child: Card(
        child: ListTile(
          title: Text(item.name),
        ),
      ),
    );
  }
}
