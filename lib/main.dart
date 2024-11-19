import 'package:flutter/material.dart';
import 'package:cutieshop/screens/login.dart';
import 'package:cutieshop/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Mental Health Tracker',
        theme: ThemeData(
          // Adjust the theme to match the new design
          primaryColor: const Color(0xFF4A628A),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF4A628A),
            secondary: const Color(0xFFF3F3E0),
          ),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
