import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent[50],
        appBar: AppBar(
          title: Text('Zupper'),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Image(image: AssetImage('images/ecommerce-plugins.jpg'),),
        ),
      ),
    );
  }
}
