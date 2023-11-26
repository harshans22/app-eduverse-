import 'package:flutter/material.dart';
class categoires extends StatefulWidget {
  const categoires({super.key});

  @override
  State<categoires> createState() => _categoriesState();
}

class _categoriesState extends State<categoires> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("categories"),
      ),
      backgroundColor: Color(0xFFE5E5E7)
    );
  }
}