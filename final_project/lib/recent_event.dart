import 'package:final_project/home.dart';
import 'package:final_project/review.dart';
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
      home: MyEvent(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyEvent extends StatefulWidget {
  const MyEvent({Key? key}) : super(key: key);

  @override
  State<MyEvent> createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {
  var size, height, width;
  Widget orangeButton(BuildContext context,String label) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery
          .of(context)
          .size
          .width - 250,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(30)
      ),
      alignment: Alignment.center,

      child: Text(
        label, style: TextStyle(color: Colors.white, fontSize: 16),),
    );
  }
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
          title: Text("Recent Events",
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
                  height: height/2.6,
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
                          child: Image.asset('assets/c5.jpeg'),
                          height: 120,
                        ),
                        Text("A Leap Towards UI/UX",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "The Event is taken by club CSI. It's about creating User Interface using Figma tool.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyReview()));
                          },

                          child: orangeButton(context, "Give Review"),
                        )
                      ],

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: height/2.4,
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
                          child: Image.asset("assets/c9.jpg"),
                          height: 150,
                        ),
                        Text("DUHacks",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text(
                          "A 24 hours long hackathon organised by DDU Students",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyReview()));
                      },

                       child: orangeButton(context, "Give Review"),
                    )
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
                          child: Image.asset("assets/c3.jpeg"),
                          height: 150,
                        ),
                        Text(
                          "Verbalizing",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 6,),
                        Text(
                          "Keeping the same spirit in mind Samvaad, the only communication club of DDU is organizing The Vocal discord, a quirky English debate competition.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyReview()));
                    },

                    child: orangeButton(context, "Give Review"),
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
