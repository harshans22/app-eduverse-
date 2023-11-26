import 'package:eduverse/home.dart';
import 'package:eduverse/login.dart';
import 'package:flutter/material.dart';
import 'package:eduverse/signup.dart';

void main() {
  //  WidgetsFlutterBinding.ensureInitialized();
  //    await Firebase.initializeApp(
  //     // options: DefaultFirebaseoptions.currentplatform
  //    );
  

  runApp(
    MaterialApp(
      routes: {
        "/": (context) => login(),
        "/home":(context) => home(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
