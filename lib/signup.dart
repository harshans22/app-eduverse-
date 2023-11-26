

import 'package:eduverse/forgetpass.dart';
import 'package:eduverse/login.dart';
import 'package:eduverse/navbar.dart';
import 'package:eduverse/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';
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


class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

void _submitform() {
  if (_formkey.currentState!.validate()) {
    ScaffoldMessenger.of(_formkey.currentContext!).showSnackBar(
         SnackBar(content: Text("Form submit successfully")));
  }
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
     var a = MediaQuery.of(context).size.width;
    var b = MediaQuery.of(context).size.height;
    return Scaffold(
       backgroundColor: Color.fromARGB(229, 252, 251, 251),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.fromLTRB(a*0.02,b*0.02,a*0.02,0),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      
                      Container(
                        child: FittedBox(
                           fit: BoxFit.cover,
                          child: SvgPicture.asset(
                            "images/loginicon.svg",   
                          ),
                        ),
                      ),
                      SizedBox(
                         height: b*0.02,
                      ),
                       Text(
                          "Hello",
                          style:
                              TextStyle(fontSize:a*0.04, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                      height: b*0.01,
                    ),
                     
                     Text(
                          "Create your account",
                          style:
                              TextStyle(fontSize:a*0.06, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                        height: b*0.015,
                      ),
                      
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                           height: b*0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 188, 187, 187),
                            ),
                            
                            child: Row(
                              children: [
                                Container(
                                  height: b*0.05,
                                  width:a*0.25,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => login(),
                                            ));
                                      },
                                      child: Text(
                                        "  Login",
                                        style: TextStyle(
                                          fontSize: a*0.046,
                                          color: Colors.black,
                                        ),
                                      )),
                                ),
                                Container(
                                  height: b*0.05,
                                  width:a*0.3,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                                  
                                                  ),
                                      onPressed: () {},
                                      child: Text(
                                        "Signup",
                                        style: TextStyle(
                                            fontSize: a*0.046, color: Colors.black),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                       padding:  EdgeInsets.fromLTRB(a*0.06,b*0.02,a*0.06,0),
                  
                        child: TextFormField(
                            controller: nameController,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                labelText: "Username",
                                labelStyle: TextStyle(fontSize:a*0.04,fontWeight: FontWeight.w500,color:  Color.fromARGB(195, 133, 133, 133)),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10.0)),
                                     filled:
                              true, 
                          fillColor: Color.fromARGB(255, 247, 243, 243),
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
                        padding:  EdgeInsets.fromLTRB(a*0.06,b*0.02,a*0.06,0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
            
                          decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(fontSize:a*0.04,fontWeight: FontWeight.w500,color:  Color.fromARGB(195, 133, 133, 133)),
                              border: OutlineInputBorder(
                               borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                                filled:
                              true, 
                          fillColor: Color.fromARGB(255, 247, 243, 243),),
                          
                        ),
                      ),
                      Padding(
                       padding:  EdgeInsets.fromLTRB(a*0.06,b*0.02,a*0.06,0),
                        child: TextFormField(
                          controller: passController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(fontSize:a*0.04,fontWeight: FontWeight.w500,color:  Color.fromARGB(195, 133, 133, 133)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                                filled:
                              true, 
                          fillColor: Color.fromARGB(255, 247, 243, 243),
                              ),
                          validator: _validpassword,
                        ),
                      ),
                      SizedBox(
                        height: b*0.01,
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                                 Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => navbar(),
                            ));
                                ScaffoldMessenger.of(_formkey.currentContext!)
                                    .showSnackBar( SnackBar(
                                  content: Text(
                                    "Login successful",
                                    style: TextStyle(
                                        backgroundColor:
                                            Color.fromARGB(255, 244, 245, 247),
                                        color: Color.fromARGB(255, 8, 145, 42)),
                                  ),
                                ));
                              }
                        },
                        child: Text(
                          "Start learning",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
                      
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(a*0.2,b*0.005,a*0.2,0),
                              child: Text(
                                "or",
                                style: TextStyle(
                                    fontSize:a*0.05,fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                               padding: EdgeInsets.fromLTRB(a*0.2,b*0.005,a*0.2,0),
                              child: Text(
                                "continue with",
                                style: TextStyle(
                                    fontSize:a*0.05, fontWeight: FontWeight.w500),
                              ),
                            ),
                             Row( 
                             mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Row(
                                    children: [
                                      Image.asset(
                                        'images/google.png',
                                        height: b*0.05,
                                      width: a*0.1,
                                      ),
                                      Image.asset(
                                        'images/apple.png',
                                         height: b*0.05,
                                      width: a*0.1,
                                      ),
                                      Image.asset(
                                        'images/facebook.png',
                                         height: b*0.05,
                                      width:  a*0.1,
                                      )
                                    ],
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
      ),
    );
  }
}