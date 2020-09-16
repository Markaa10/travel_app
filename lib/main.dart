import 'package:flutter/material.dart';
import 'package:travel_app/ui/screens/home_screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aleesh Design Travel App',
      home: HomeScreen(),
    );
  }
}
