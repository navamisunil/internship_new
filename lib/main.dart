import 'package:flutter/material.dart';
import 'package:internship_new/screens/LogIn/components/LogIn.dart';
import 'package:internship_new/screens/self_care/self_care.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (home: self_care(),);
  }
}
