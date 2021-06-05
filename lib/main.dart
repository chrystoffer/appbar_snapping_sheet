import 'package:flutter/material.dart';
import 'package:snappingsheet/home.dart';

void main() {
  runApp(AppbarSnappingSheet());
}

class AppbarSnappingSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar Snapping Sheet',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          elevation: 0,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        primarySwatch: Colors.grey,
      ),
      home: Home(),
    );
  }
}
