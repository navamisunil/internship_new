import 'package:flutter/material.dart';
class FirstScreencal extends StatefulWidget {
  const FirstScreencal({Key? key}) : super(key: key);

  @override
  State<FirstScreencal> createState() => _FirstScreencalState();
}

class _FirstScreencalState extends State<FirstScreencal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SUM'),
        backgroundColor: Colors.pink.shade100,
      )
    );
  }
}
