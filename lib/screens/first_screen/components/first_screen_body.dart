import 'package:flutter/material.dart';

class FirstScreenCal extends StatefulWidget {
  FirstScreenCal({Key? key}) : super(key: key);

  @override
  State<FirstScreenCal> createState() => _FirstScreenCalState();
}

class _FirstScreenCalState extends State<FirstScreenCal> {
  TextEditingController num1controller = new TextEditingController();

  TextEditingController num2controller = new TextEditingController();

  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: new TextField(controller: num1controller),
          ),
          Container(
            child: new TextField(controller: num2controller),
          ),
          ElevatedButton(
              child: Text(
                "Add",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade100),
              onPressed: () {
                setState(() {
                  int sum = int.parse(num1controller.text) +
                      int.parse(num2controller.text);
                  result = sum.toString();
                });
              }),
          Column(
            children: [
              Text("Result:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(result),
            ],
          )
        ],
      ),
    );
  }
}
