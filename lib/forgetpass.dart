import 'dart:async';

import 'package:eduverse/login.dart';
import 'package:eduverse/main.dart';
import 'package:flutter/material.dart';

class forgetpass extends StatefulWidget {
  @override
  State<forgetpass> createState() => _forgetpass();
}

class _forgetpass extends State<forgetpass> {
  @override
  void initstate() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => login(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text("This is forgotten password page"),
        ),
      ),
    );
  }
}
