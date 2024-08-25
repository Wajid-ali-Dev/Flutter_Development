import 'package:flutter/material.dart';
import 'package:stateless_widgts/Week2/grid_view.dart';
import 'package:stateless_widgts/Week2/list_View.dart';
import 'package:stateless_widgts/Week2/list_tile.dart';
import 'first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'www.flutter.com',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: GridVieww(),
    );
  }
}

/*class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigator.POP'.toUpperCase(),
          style: TextStyle(
            letterSpacing: 6,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}*/