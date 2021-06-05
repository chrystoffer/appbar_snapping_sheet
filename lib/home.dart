import 'package:flutter/material.dart';
import 'package:snappingsheet/app_background.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Appbar Snapping Sheet",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: AppBarAndBackground(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_outlined),
            label: "Minha conta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: "Meus pedidos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favoritos",
          ),
        ],
      ),
    );
  }
}
