import 'package:final_project/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyHome()));
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("About Us",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          margin: EdgeInsets.only(left:20,right:20),
          child: Container(
            margin: EdgeInsets.only(left:20,right:20),
            padding: EdgeInsets.all(8),
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Nowadays, clubs have to do many physical efforts to increase the registrations for the particular events and due to tight college schedules, students may be unaware about such events and hence they may not be able to get some important knowledge. Hence, we are here for solutions for both clubs and students! Our main intention to develop this app is to create awareness among the students for every clubs event. Using our app, students can see upcoming events of the clubs and if interested then they can register themselves. If some club wants to throw an event then the club head can be able to see availability of resources and according to that they can plan their event.',
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

