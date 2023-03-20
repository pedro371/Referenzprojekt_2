import 'package:dm1/screens/home.dart';
import 'package:dm1/utils/style_variables/color_palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.primarySwatch,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w400, color: Colors.black),
          headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Palette.primarySwatch),
          headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        iconTheme: const IconThemeData(
          color: Palette.secondaryColor,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
