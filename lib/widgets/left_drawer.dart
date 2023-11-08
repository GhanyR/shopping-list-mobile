import 'package:flutter/material.dart';
import 'package:shopping_list/menu.dart'; // Update this import based on your project structure
import 'package:shopping_list/shoplist_form.dart'; // Update this import based on your project structure

class LeftDrawer extends StatelessWidget {
  LeftDrawer({Key? key}) : super(key: key); // Removed const here

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Removed const from ListView because its children might change
        children: [
          DrawerHeader(
            // Removed const from DrawerHeader
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Catat seluruh keperluan belanjamu di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(), // This is likely a custom widget you've created.
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('Tambah Produk'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopFormPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
