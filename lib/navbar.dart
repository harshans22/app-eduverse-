import 'package:flutter/material.dart';
import 'package:eduverse/add.dart';
import 'package:eduverse/categories.dart';
import 'package:eduverse/notes.dart';
import 'package:eduverse/profile.dart';
import 'package:eduverse/profile.dart';
import 'package:eduverse/home.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int myindex = 0;
   List<Widget> screens =  [
   home(),
    categoires(),
    notes(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        children: screens,
        index: myindex,
      ),
      backgroundColor: Color(0xFFE5E5E7),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
                 myindex = index;
            }); 
          },
          currentIndex: myindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Colors.black),
              label: "calender",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              label: "Add to cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              label: "Profile",
            ),
          ]),
    );
  }
}