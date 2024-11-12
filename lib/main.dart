import 'package:flutter/material.dart';
import 'package:cutieshop/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Adjust the primary color to match the gradient
        primaryColor: Color(0xFF4A628A),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF4A628A),
          secondary: Color(0xFFF3F3E0),
        ),
      ),
      home: MyHomePage(),
    );
  }
}