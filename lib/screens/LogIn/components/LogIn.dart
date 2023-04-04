
import 'package:flutter/material.dart';

import 'LogInBody.dart';
class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('LOGIN PAGE'),

      ),
      body: LogInBody(),
    );
  }
}
