import 'package:flutter/material.dart';
import 'package:stroll/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stroll',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff8B88EF)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
