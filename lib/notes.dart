import 'package:flutter/material.dart';
class notes extends StatefulWidget {
  const notes({super.key});

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("notes"),
      ),
      backgroundColor: Color(0xFFE5E5E7)
    );
  }
}