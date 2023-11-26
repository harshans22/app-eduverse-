import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10, left: 14, top: 16, bottom: 10),
              child: Row(
                children: [
                  SvgPicture.asset('assets/4dots.svg'),
                  SizedBox(width: 278),
                  SvgPicture.asset('assets/profileicon.svg'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 55,
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          hintText: "   Search course here"),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        left: 8,
                      ),
                      child: SvgPicture.asset(
                        'assets/4dotscircle.svg',
                        height: 52,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(83, 92, 222, 1),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 15),
                          child: Column(
                            children: [
                              Text("Virtual Reality- Time to",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                              Text("learn 360 videos",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 35, bottom: 4),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 228, 127, 59)),
                                    onPressed: () {},
                                    child: Text(
                                      "Start the course",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 6, top: 4, bottom: 4),
                          child: SvgPicture.asset(
                            'assets/studenticon.svg',
                            height: 170,
                            width: 140,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8),
              child: Row(
                children: [
                  Text("Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(width: 160),
                  TextButton(
                      onPressed: () {},
                      child: Text("View all >",
                          style: TextStyle(color: Colors.grey)))
                ],
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 8),
              child: Row(
                children: [
                  Text("Featured class",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(width: 126),
                  TextButton(
                      onPressed: () {},
                      child: Text("View all >",
                          style: TextStyle(color: Colors.grey)))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
