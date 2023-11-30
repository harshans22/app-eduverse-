import 'package:eduverse/home.dart';
import 'package:eduverse/login.dart';
import 'package:eduverse/navbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:eduverse/signup.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp(
      // options: DefaultFirebaseoptions.currentplatform
     );
  

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
