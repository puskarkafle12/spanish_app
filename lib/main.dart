import 'package:flutter/material.dart';
import 'package:spanish_app/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'spanish number app',
      home: HomePage(),
    );
  }
}
