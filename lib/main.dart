import 'package:flutter/material.dart';
import 'package:to_do_app/pages/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To-Do-App',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}