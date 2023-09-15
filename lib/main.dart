import 'package:backgrounds/src/screens/header.dart';
import 'package:backgrounds/src/screens/pinterest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HeaderScreen(),
      home: PinterestPage(),
    );
  }
}
