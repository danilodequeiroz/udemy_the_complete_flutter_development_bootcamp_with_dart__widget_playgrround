import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutPlaygroundApp());
}

String textContent = "Hello";

class LayoutPlaygroundApp extends StatelessWidget {
  const LayoutPlaygroundApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        body: SafeArea(
          child: Container(
            color: Colors.grey,
            child: Text(textContent),
          ),
        ),
      ),
    );
  }
}
