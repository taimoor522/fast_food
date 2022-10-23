import 'package:code/Views/home_screen.dart';
import 'package:flutter/material.dart';

import 'Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food App',
      theme: MyTheme.theme,
      home: const HomeScreen(),
    );
  }
}
