import 'package:eduverse/add.dart';
import 'package:eduverse/categories.dart';
import 'package:eduverse/notes.dart';
import 'package:eduverse/profile.dart';
import "package:flutter/material.dart";


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
    );
  }
}
