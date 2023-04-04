
import 'package:flutter/material.dart';

import '../../first_screen/first_screen_cal.dart';
import 'FirstScreen.dart';

//import 'dart:html';
//import 'dart:ui';
class LogInBody extends StatefulWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  State<LogInBody> createState() => _LogInBodyState();
}

class _LogInBodyState extends State<LogInBody> {
  @override
  TextEditingController username = new TextEditingController();
  TextEditingController pwd = new TextEditingController();

  Widget build(BuildContext context) {
    /*Column(
    children: [
      SizedBox(height: 30,),
    Align(
      alignment: Alignment.center,
    child: Text("COLIGOBRAINS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),);
    ),
    ],
    );*/
    return SingleChildScrollView(
        child: Column(children: [
      Row(
        children: [
          Container(
              child: Image.asset("assets/kart.jpeg",height: 40,width: 80,),
            margin: EdgeInsets.only(top: 150,left: 30),
          ),
          Container(
            margin: EdgeInsets.only(top: 150,left: 10),
            child: Text(
              'KARTALOG',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,fontFamily: 'Mulish'),
            ),
          ),
        ],
      ),
      Container(
          // child: Text('KARTALOG',style: TextStyle(fontWeight: FontWeight,bold,fontSize: 15),),

          //height: 140,
          //width: 180,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xffEAD300),
                Color(0xffEAAA00),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Text(
              'WELCOME KARTALOG',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Mulish'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Login to your account',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email:',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  TextField(
                    controller: username,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Password:',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  TextField(
                    obscureText: true,
                    controller: pwd,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstScreen(),
                    ),
                  );
                },
                child: Text(
                  'Login To Your Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Forgot Your Password',
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 13),
            ),
          ]))
    ]));
  }
}
