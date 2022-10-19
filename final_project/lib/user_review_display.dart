import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/club.dart';
import 'package:final_project/recent_event.dart';
import 'package:final_project/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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

class userReviewDisplay extends StatefulWidget {
  const userReviewDisplay({Key? key}) : super(key: key);

  @override
  State<userReviewDisplay> createState() => _userReviewDisplayState();
}

class _userReviewDisplayState extends State<userReviewDisplay> {
  List _review=[];
  var _firestoreInstance=FirebaseFirestore.instance;
  fetchreview() async{
    QuerySnapshot qn=await _firestoreInstance.collection("review").get();
    setState(() {
      for(int i=0;i<qn.docs.length;i++){
        _review.add({
          "review":qn.docs[i]["review"],
          "event":qn.docs[i]["event"],
        });
      }
    });
    return qn.docs;
  }
  void initState(){
    fetchreview();
    super.initState();
  }
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
          title: Text("User Reviews",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),

        body: SafeArea(
          // child: _pages.elementAt(_selectedIndex),
          child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _review.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
          itemBuilder: (_, index) {
            return GestureDetector(

              //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>displaycomplain(_review[index]))),
              child: Card(
                elevation: 1,
                child: Column(
                  children: [
                    Text('Event:'),
                    Text("${_review[index]["event"]}"),
                    Text('Review:'),
                    Text("${_review[index]["review"]}"),
                  ],
                ),
              ),
            );
          }
    ),
    ),


    );
  }
}
