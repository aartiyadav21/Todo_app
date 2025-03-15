import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/home_page.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();

  // Open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple, // Purple theme
        scaffoldBackgroundColor: Colors.purple[50], // Light lavender background
        appBarTheme: AppBarTheme(
          color: Colors.purple[300], // Lavender app bar
          elevation: 0,
        ),
      ),
    );
  }
}