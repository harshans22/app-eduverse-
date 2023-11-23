import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool rem = false;
  bool not = false;
  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size.width;
    var b = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 249, 251),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: b * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: a * 0.066, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: b * 0.118,
                            child:
                                SvgPicture.asset('images/profilepicture.svg'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: a * 0.015,
                      ),
                      Text(
                        "harsh",
                        style: TextStyle(
                            fontSize: a * 0.06, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: a * 0.015,
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontSize: a * 0.05, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: b * 0.014,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: a * 0.35,
                                height: b * 0.086,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(201, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Task Done",
                                        style: TextStyle(
                                            fontSize: a * 0.045,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text("256",
                                          style:
                                              TextStyle(fontSize: a * 0.045)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: a * 0.35,
                                height: b * 0.086,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(201, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Pending",
                                        style: TextStyle(
                                            fontSize: a * 0.045,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text("28",
                                          style:
                                              TextStyle(fontSize: a * 0.045)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: b * 0.02,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset('images/reminder.svg'),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "Reminders",
                              style: TextStyle(
                                  fontSize: b * 0.025,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: a*0.25,
                            ),
                            Container(
                                child: CupertinoSwitch(
                                  activeColor:Color(0xFFFF647D),
                                    value: rem,
                                    onChanged:(bool value) { 
                                      setState(() { rem= value;
                                       }); }, ),),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset(
                              'images/notifications.svg',
                              height: a * 0.07,
                            ),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: b * 0.025,
                                  fontWeight: FontWeight.w500),
                            ),
                             SizedBox(
                              width: a*0.19,
                            ),
                             Container(
                                child: CupertinoSwitch(
                                  activeColor:Color(0xFFFF647D),
                                    value: not,
                                    onChanged:(bool value) { 
                                      setState(() { not= value;
                                       }); }, ),),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Account",
                        style: TextStyle(
                            fontSize: b * 0.02,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset(
                              'images/notifications.svg',
                              height: a * 0.07,
                            ),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "Change Name",
                              style: TextStyle(
                                  fontSize: b * 0.025,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            InkWell( splashColor: Colors.blue,
                              onTap: () {},
                              child: Container( width: a*0.2,
                              child: Image.asset("images/Vector (1).png")
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset(
                              'images/notifications.svg',
                              height: a * 0.07,
                            ),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontSize: b * 0.025,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset('images/reminder.svg'),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "Change Profile Picture",
                              style: TextStyle(
                                  fontSize: b * 0.025,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        "Up ToDo",
                        style: TextStyle(
                            fontSize: b * 0.02,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset(
                              'images/abouut.svg',
                              height: a * 0.07,
                            ),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "About Us",
                              style: TextStyle(
                                  fontSize: b * 0.025,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset(
                              'images/FAQ.svg',
                              height: a * 0.07,
                            ),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "FAQ",
                              style: TextStyle(
                                  fontSize: b * 0.025,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: b * 0.08,
                        width: a * 0.86,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(201, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: a * 0.04,
                            ),
                            SvgPicture.asset(
                              'images/logout.svg',
                              height: a * 0.07,
                            ),
                            SizedBox(
                              width: a * 0.04,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                fontSize: b * 0.025,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFF647D),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: b * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
