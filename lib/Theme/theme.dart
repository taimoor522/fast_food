import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData theme = ThemeData.light().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pinkAccent,
        shape: const StadiumBorder(),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.pinkAccent,
        side: const BorderSide(color: Colors.pinkAccent),
        shape: const StadiumBorder(),
      ),
    ),
    textTheme: const TextTheme().copyWith(
      titleLarge: const TextStyle(
          fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
      titleMedium: const TextStyle(
          fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold),
      titleSmall: const TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      bodyLarge: const TextStyle(fontSize: 20, color: Colors.black),
      bodyMedium: const TextStyle(fontSize: 16, color: Colors.black),
      bodySmall: const TextStyle(fontSize: 12, color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.pinkAccent,
        tertiary: const Color.fromARGB(255, 216, 235, 240)),
  );
}
