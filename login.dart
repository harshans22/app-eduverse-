import 'package:eduverse/firebase_functions.dart';
import 'package:eduverse/forgetpass.dart';

import 'package:eduverse/navbar.dart';
import 'package:eduverse/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

String? _validpassword(value) {
  if (value.isEmpty) {
    return "Please enter password";
  }
  if (!(value.length < 16 && value.length > 6)) {
    return "Password should be between 6-16 words";
  }
}

TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

// void _submitform() {
//   if (_formkey.currentState!.validate()) {
//     ScaffoldMessenger.of(_formkey.currentContext!).showSnackBar(
//          SnackBar(content: Text("Form submit successfully"),
//          duration: Duration(seconds: 2),
//          behavior: SnackBarBehavior.fixed,
//          )

//         );

//   }
// }

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size.width;
    var b = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(229, 252, 251, 251),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(a * 0.02, b * 0.02, a * 0.02, 0),
            child: Center(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Container(
                      width: a * 0.2,
                      height: b * 0.3,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: SvgPicture.asset("images/loginicon.svg"),
                      ),
                    ),
                    SizedBox(
                      height: b * 0.02,
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(
                          fontSize: a * 0.04, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: b * 0.01,
                    ),
                    Text(
                      "Login your account",
                      style: TextStyle(
                          fontSize: a * 0.06, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: b * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: b * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 188, 187, 187),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: b * 0.05,
                                width: a * 0.25,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    onPressed: () {},
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: a * 0.046,
                                          color: Colors.black),
                                    )),
                              ),
                              Container(
                                height: b * 0.05,
                                width: a * 0.25,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => signup(),
                                          ));
                                    },
                                    child: Text(
                                      "Signup  ",
                                      style: TextStyle(
                                        fontSize: a * 0.046,
                                        color: Colors.black,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(a * 0.06, b * 0.02, a * 0.06, 0),
                      child: TextFormField(
                        controller: emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                              fontSize: a * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(195, 133, 133, 133)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(247, 249, 247, 247),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter username";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(a * 0.06, b * 0.02, a * 0.06, 0),
                      child: TextFormField(
                        controller: passController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                              fontSize: a * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(195, 133, 133, 133)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(183, 247, 243, 243),
                        ),
                        validator: _validpassword,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => forgetpass(),
                                    ));
                              },
                              child: Text(
                                "Forget password?",
                                style: TextStyle(
                                    color: Colors.purple, fontSize: 16),
                              )),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 320,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 249, 106, 104)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              createUserWithEmailAndPassword(
                                  emailController.text, passController.text);
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => navbar(),
                                    ));
                                ScaffoldMessenger.of(_formkey.currentContext!)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    "Login successful",
                                    style: TextStyle(
                                        fontSize: a * 0.05,
                                        color:
                                            Color.fromARGB(255, 252, 254, 253)),
                                  ),
                                  duration: Duration(seconds: 2),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor:
                                      Color.fromARGB(255, 249, 106, 104),
                                ));
                              }
                            },
                            child: Text(
                              "login",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                a * 0.2, b * 0.005, a * 0.2, 0),
                            child: Text(
                              "or",
                              style: TextStyle(
                                  fontSize: a * 0.05,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                a * 0.2, b * 0.005, a * 0.2, 0),
                            child: Text(
                              "continue with",
                              style: TextStyle(
                                  fontSize: a * 0.05,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: b * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/google.png',
                                height: b * 0.05,
                                width: a * 0.2,
                              ),
                              Image.asset(
                                'images/apple.png',
                                height: b * 0.05,
                                width: a * 0.2,
                              ),
                              Image.asset(
                                'images/facebook.png',
                                height: b * 0.05,
                                width: a * 0.2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
