import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/home.dart';

enum Gender {
  male,
  female,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Gender? SelectedGender;
  double height = 180;
  int weight = 60;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff0a0d23),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0a0d23),
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// 0xff8f92a3

