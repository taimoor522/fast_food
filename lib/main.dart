import 'package:code/Theme/theme.dart';
import 'package:flutter/material.dart';

import 'Views/home_screen.dart';

void main() async {
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
