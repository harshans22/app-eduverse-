import 'package:eduverse/model/courses.dart';
import 'package:eduverse/search.dart';
import 'package:eduverse/viewallCategories.dart';
import 'package:eduverse/viewcourses.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:convert';
import 'package:ellipsized_text/ellipsized_text.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Map cat = {
  "Machine Learning": "M L",
  "Flask": "Flask",
  "Python": "Python",
  "Data Science": "Data Science",
  "Web Scraping": "Web",
  "Node JS": "Node Js",
  "Java Script": "Java",
  "Programming Fundamentals Courses": "Programming",
  "Django": "Django",
  "HTML and CSS": "HTMl&CSS",
};

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool isloading = true;
  List<Sector> sectors = [];
  Future<void> fetchData() async {
    String url = "https://courses-eduverse.onrender.com/courses";
    var response = await get(Uri.parse(url));
    List<dynamic> data = json.decode(response.body);
    setState(() {
      sectors = data.map((sector) => Sector.fromJson(sector)).toList();
      isloading = false;
    });
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    bool chip = false;
    var a = MediaQuery.of(context).size.width;
    var b = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 234, 234, 238),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'images/4Dot.svg',
                      height: b * 0.03,
                    ),
                    SizedBox(width: a * 0.68),
                    SvgPicture.asset('images/profileicon.svg',
                        height: b * 0.05),
                  ],
                ),
                SizedBox(
                  height: b * 0.02,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => search()));
                      },
                      child: Container(
                          height: b * 0.08,
                          width: a * 0.7,
                          child: SvgPicture.asset(
                            "images/search.svg",
                            width: a,
                          )),
                    ),
                    SizedBox(
                      width: a * 0.01,
                    ),
                    SvgPicture.asset(
                      'images/4dotblue.svg',
                      height: b * 0.07,
                    ),
                  ],
                ),
                SizedBox(
                  height: b * 0.02,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: b * 0.23,
                            width: a * 0.86,
                            child: FittedBox(
                                fit: BoxFit.cover,
                                child: Container(
                                  decoration: BoxDecoration(
                                     boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius:8,
        offset: Offset(-2,-2), // changes the position of the shadow
      )],
                                  ),
                                  child: SvgPicture.asset(
                                      "images/start the course.svg"),
                                ))))
                  ],
                ),
                Row(
                  children: [
                    Text("Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    SizedBox(width: a * 0.4),
                    TextButton(
                        onPressed: () {
                          ;
                        },
                        child: Text("View all >",
                            style: TextStyle(
                                color: Color.fromARGB(255, 6, 33, 167),
                                fontSize: 13,
                                fontWeight: FontWeight.w600))),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: b * 0.05,
                      width: a * 0.8,
                      child: ListView.builder(
                        itemExtent: a * 0.2,
                        itemCount: sectors.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ChoiceChip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              side: BorderSide(color: Colors.grey),
                              label: EllipsizedText(
                                  cat[sectors[index].sectorName]),
                              labelStyle: TextStyle(color: Colors.black),
                             
                              onSelected: (bool selected) {
                                setState(() {
                                  chip = selected;
                                });
                              },
                              backgroundColor: chip
                                  ? Colors.pink
                                  : Color.fromARGB(232, 234, 234, 238),
                              selected: chip,
                              );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Featured class",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    SizedBox(width: a * 0.32),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      viewallCategories(sectors)));
                        },
                        child: Text("View all >",
                            style: TextStyle(
                                color: Color.fromARGB(255, 6, 33, 167),
                                fontSize: 13,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                           boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 2), // changes the position of the shadow
      )],
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: isloading
                              ? SpinKitHourGlass(
                                  color: Color.fromARGB(255, 249, 106, 104))
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                            harsh[sectors[0].sectorName],
                                            width: a * 0.6,
                                            height: b * 0.2,
                                          )),
                                    
                                    SizedBox(height: b * 0.01),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: a * 0.23,
                                          child: EllipsizedText(
                                            sectors[0].sectorName,
                                            style: TextStyle(
                                                fontSize: a * 0.033,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 128, 126, 126)),
                                          ),
                                        ),
                                        Text(
                                          "₹" +
                                              sectors[0]
                                                  .featuredCourses[0]
                                                  .price,
                                          style: TextStyle(
                                              fontSize: a * 0.03,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: b * 0.01),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                            child: SvgPicture.asset(
                                          "images/author.svg",
                                          height: b * 0.05,
                                        )),
                                        SizedBox(
                                          width: b * 0.02,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                                sectors[0]
                                                    .featuredCourses[0]
                                                    .author
                                                    .name,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Text("4.5 star",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: b * 0.01),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    viewcourses(sectors[0]
                                                        .sectorUuid)));
                                      },
                                      child: Center(
                                          child: FittedBox(
                                              child: SvgPicture.asset(
                                        "images/view courses.svg",
                                        width: a,
                                      ))),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: a * 0.04,
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                           boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 2), // changes the position of the shadow
      )],
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: isloading
                              ? SpinKitHourGlass(
                                  color: Color.fromARGB(255, 249, 106, 104))
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset(
                                          harsh[sectors[1].sectorName],
                                          width: a * 0.6,
                                          height: b * 0.2,
                                        )),
                                    SizedBox(height: b * 0.01),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: a * 0.245,
                                          child: EllipsizedText(
                                            sectors[1].sectorName,
                                            style: TextStyle(
                                                fontSize: a * 0.033,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 128, 126, 126)),
                                          ),
                                        ),
                                        Text(
                                          "₹" +
                                              sectors[1]
                                                  .featuredCourses[0]
                                                  .price,
                                          style: TextStyle(
                                              fontSize: a * 0.03,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: b * 0.01),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                            child: SvgPicture.asset(
                                          "images/author.svg",
                                          height: b * 0.05,
                                        )),
                                        SizedBox(
                                          width: b * 0.02,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                                sectors[1]
                                                    .featuredCourses[1]
                                                    .author
                                                    .name,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Text("4.1 star",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: b * 0.01),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    viewcourses(sectors[1]
                                                        .sectorUuid)));
                                      },
                                      child: Center(
                                          child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: SvgPicture.asset(
                                                "images/view courses.svg",
                                                width: a,
                                              ))),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
