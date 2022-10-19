import 'package:final_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:final_project/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyClub(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyClub extends StatefulWidget {
  const MyClub({Key? key}) : super(key: key);

  @override
  State<MyClub> createState() => _MyClubState();
}

class _MyClubState extends State<MyClub> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyHome()));
              },
            icon: Icon(Icons.home_outlined),
          ),
          title: Text("Know More About The Clubs",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(

          padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: height/3,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/shutterbugs.png'),
                          height: 100,
                        ),
                        Text("Photographic club",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "Shutterbugs is the only photography club of DDU,nadiad which aims to enhance and showcase the creative photography skills of the students.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height/2.3,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Container(
                          child: Image.asset("assets/csi.png"),
                          height: 150,
                        ),
                        Text("Comupter Society of India",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "The seed for the Computer Society of India (CSI) was first shown in the year 1965 with a handful of IT enthusiasts who were a computer user group and felt the need to organize tteir activities.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height/2.8,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset('assets/malgadi.png'),
                          height: 150,
                        ),
                        Text("You Demand, We Diliver",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "Shutterbugs is the only photography club of DDU,nadiad which aims to enhance and showcase the creative photography skills of the students.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height/2.2,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/gdsc.png"),
                          height: 150,
                        ),
                        Text(
                          "Helping students bridge the gap between theory and practice",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "Google Developer Student Clubs (GDSC) are community groups for college and university students interested in Google developer technologies.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height/2.5,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/eco.jpg"),
                          height: 150,
                        ),
                        Text("Where love for Nature tends to infinity",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "Where love for Nature tends to infinity️! On a mission of making Eco-friendly behaviour, a New Normal among students of University.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height/2.2,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/dc.png"),
                          height: 150,
                        ),
                        Text(
                          "where an individual's thinking is presented in the form of art and words.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "DDU Connect started on 17th March, 2012 with an aim to ‘Connect all faculties of Dharmsinh Desai University and to provide a platform for all students to showcase their creativity.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height/2.2,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/sm.jpg"),
                          height: 150,
                        ),
                        Text("Samvaad: Verbalizing Minds",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "Our club is a family of visionary and great communicators. We aim to reform the society to be a better place where everyone can freely communicate as communication forms the base of development.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ), // SafeArea
      ), // Scaffold
    );
  }
}
