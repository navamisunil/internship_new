import 'package:flutter/material.dart';

import './components/cal_body.dart';

class cal extends StatelessWidget {
  const cal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('CALCULATOR'),
          backgroundColor: Colors.pinkAccent.shade100),
      body: CalBody(),
    );
  }
}
