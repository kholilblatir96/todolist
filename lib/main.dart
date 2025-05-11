import 'package:flutter/material.dart';
import 'package:todolist/home_page.dart';
import 'package:todolist/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Theme Demo',
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? _darkTheme : _lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(toggleTheme: toggleTheme),
        '/second': (context) => SecondPage(toggleTheme: toggleTheme),
      },
    );
  }

  // Light theme
  final ThemeData _lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.blue.shade700,
      secondary: Colors.teal,
      surface: Colors.white,
      background: Colors.grey.shade50,
    ),
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );

  // Dark theme
  final ThemeData _darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.blue.shade300,
      secondary: Colors.tealAccent,
      surface: Colors.grey.shade900,
      background: Colors.black87,
    ),
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}