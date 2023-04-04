import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:internship_new/screens/blank.dart';
import 'package:internship_new/screens/self_care/self_care_body.dart';

class self_care extends StatelessWidget {
  const self_care({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: self_care_body(),

      );
  }
}
