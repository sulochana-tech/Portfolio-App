import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      home: Portfolio(),
      theme: ThemeData(fontFamily: 'Popins'),
    );
  }
}

