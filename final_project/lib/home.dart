import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:final_project/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/login.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var size, height, width;
  var url = "https://bit.ly/Samvaad_VocalDiscord";
  Widget orangeButton(  BuildContext context,String label) {
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
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('DDU Evento'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
      body: ListView(
        children: [


          SizedBox(height: 35),
          Container(

            margin:  EdgeInsets.only(left:30),
            padding: EdgeInsets.only(left: 0, top: 0, right: 35),

            child: Text(
              'Glimpses',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 35),
      CarouselSlider(
        items: [

          //1st Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/c3.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //2nd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/c11.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //3rd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/c10.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //4th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/c9.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //5th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/c6.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

        ],

        //Slider Container properties
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),

          Container(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Text(
              'Upcoming Events',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 35),

          Container(
            width: 350,
            height: 450,
            margin: EdgeInsets.only(left:20,right:20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [

                  Container(

                    child: Image.asset("assets/1.png"),
                    height: 150,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Venue: Seminar Hall",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("time: 6:00 PM Saturday",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
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
                  SizedBox(height: 12,),
                  orangeButton(context, "Register Here"),

                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 350,
            height: 450,
            margin: EdgeInsets.only(left:20,right:20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/2.png"),
                    height: 150,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Venue: MMH",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("time: 12:00 PM Saturday",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
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
                  SizedBox(height: 12,),
                  orangeButton(context, "Register Here"),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 350,
            height: 450,
            margin: EdgeInsets.only(left:20,right:20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/3.png"),
                    height: 150,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Venue: Room No.4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("time: 4:00 PM Saturday",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
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
                  SizedBox(height: 12,),
                  orangeButton(context, "Register Here"),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 350,
            height: 450,
            margin: EdgeInsets.only(left:20,right:20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0,3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/5.png"),
                    height: 150,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Venue: Seminar Hall",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("time: 3:00 PM Saturday",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
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
                  SizedBox(height: 12,),
                  orangeButton(context, "Register Here"),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}


