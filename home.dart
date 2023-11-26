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
      var a = MediaQuery.of(context).size.width;
    var b = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(25, 20, 25,0),
            child: Column(
              children: [ 
                Row(
                    children: [
                      SvgPicture.asset('images/4Dot.svg',height: b*0.03,),
                      SizedBox(width: a*0.68),
                      SvgPicture.asset('images/profileicon.svg',height: b*0.05),
                    ],
                  ),
                  SizedBox(
                    height: b*0.02,
                  ),
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              hintText: "Search course here"),
                        )),
                        SizedBox(width: a*0.02,),
                         SvgPicture.asset(
                            'images/4dotblue.svg',
                            height: b*0.07,
                          ),
                      ],
                    ),
                    SizedBox(height: b*0.02,),
                    Row(
                      children: [
                        GestureDetector( onTap: (){},
                          child: Container( height:b*0.23,
                          width: a*0.86,
                          
                            child: FittedBox(
                            fit: BoxFit.cover,
                              child: SvgPicture.asset("images/start the course.svg"))))
                      ],
                    ),
                
                 Row(
                    children: [
                      Text("Categories",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      SizedBox(width: a*0.33),
                      TextButton(
                          onPressed: () {},
                          child: Text("View all >",
                              style: TextStyle(color: Colors.grey,fontSize: 12)))
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(height: b*0.15,)
                    ],
                  ),
               Row(
                    children: [
                      Text("Featured class",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      SizedBox(width: a*0.23),
                      TextButton(
                          onPressed: () {},
                          child: Text("View all >",
                              style: TextStyle(color: Colors.grey,fontSize: 12)))
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
