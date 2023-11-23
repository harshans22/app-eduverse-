import 'package:eduverse/forgetpass.dart';
import 'package:eduverse/homepage.dart';
import 'package:eduverse/signup.dart';
import 'package:eduverse/splash_screen.dart';
import 'package:flutter/material.dart';

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

TextEditingController passController = TextEditingController();

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

void _submitform() {
  if (_formkey.currentState!.validate()) {
    ScaffoldMessenger.of(_formkey.currentContext!).showSnackBar(
        const SnackBar(content: Text("Form submit successfully")));
  }
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*.1,
                  ),
                  Image.asset(
                    "assets/img.png",
                    height: 220,
                    width: 300,
                
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Welcome back",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      "Login your account",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                      ),
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 219, 214, 214),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => signup(),
                                      ));
                                },
                                child: const Text(
                                  "Signup  ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 22, top: 12, bottom: 5, right: 22),
                    child: TextFormField(
                      controller: nameController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          labelText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter username";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 22, top: 8, bottom: 4, right: 22),
                    child: TextFormField(
                      controller: passController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
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
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 16),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.only(
                              right: 135, left: 130, top: 10, bottom: 10)),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(_formkey.currentContext!)
                              .showSnackBar(const SnackBar(
                            content: Text(
                              "Login successful",
                              style: TextStyle(
                                  backgroundColor:
                                      Color.fromARGB(255, 244, 245, 247),
                                  color: Color.fromARGB(255, 8, 145, 42)),
                            ),
                          ));
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homepage(),
                            ));
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 9, right: 9, top: 9, bottom: 6),
                          child: Text(
                            "or",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6.0),
                          child: Text(
                            "continue with",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/google.png',
                                height: 28,
                                width: 28,
                              ),
                              Image.asset(
                                'assets/apple.png',
                                height: 55,
                                width: 55,
                              ),
                              Image.asset(
                                'assets/fb.png',
                                height: 32,
                                width: 34,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
