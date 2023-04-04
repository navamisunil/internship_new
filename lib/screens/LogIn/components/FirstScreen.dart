import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body:  Column(
      children:[
        Container(
          child: Image.asset("assets/tick.webp"),

        ),

        Center(
          child: TextButton(
      child: Text("You are logged in",style: TextStyle(fontFamily: "Delicious Handrawn",fontSize: 30),),
            onPressed: () {
     Navigator.pop(context);
            },
      ),
        ),
    ],
    ),
    );
  }
  }
