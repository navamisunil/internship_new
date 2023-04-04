import 'package:flutter/material.dart';

class CalBody extends StatefulWidget {
  const CalBody({Key? key}) : super(key: key);

  @override
  State<CalBody> createState() => _CalBodyState();
}

class _CalBodyState extends State<CalBody> {
  TextEditingController text1controller = new TextEditingController();
  TextEditingController text2controller = new TextEditingController();
  num result = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "NUMBER ONE:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        new TextField(
          controller: text1controller,
        ),
        Text(
          "NUMBER TWO:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        new TextField(controller: text2controller),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200),
                  onPressed: () {
                    add();
                  },
                  child: Text("+",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200),
                  onPressed: () {
                    sub();
                  },
                child: Text("/",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200),
                  onPressed: () {
                    div();
                  },
                  child: Text("/",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200),
                  onPressed: () {
                    mul();
                  },
                child: Text("*",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
            ],
          ),
        ),
        Text("$result"),
      ],
    );
  }

  void add() {
    setState(() {
      result =
          int.parse(text1controller.text) + int.parse(text2controller.text);
    });
  }

  void sub() {
    setState(() {
      result =
          int.parse(text1controller.text) - int.parse(text2controller.text);
    });
  }

  void div() {
    setState(() {
      result =
          int.parse(text1controller.text) / int.parse(text2controller.text);
    });
  }

  void mul() {
    setState(() {
      result =
          int.parse(text1controller.text) * int.parse(text2controller.text);
    });
  }
}
