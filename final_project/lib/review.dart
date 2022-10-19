import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:final_project/recent_event.dart';
import 'package:final_project/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/login.dart';


void main() {
  runApp(MaterialApp( home: MyReview(),));
}

class MyReview extends StatefulWidget {
  const MyReview({Key? key}) : super(key: key);
  @override
  State<MyReview> createState() => _MyReviewState();
}

class _MyReviewState extends State<MyReview> {
  final controller_event = TextEditingController();
  final controller_review = TextEditingController();
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
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyEvent()));
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text("Review",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Event Name',
                      hintText: 'Enter Event Name',
                    ),
                    controller: controller_event,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Review',
                      hintText: 'Enter Event Review',
                    ),
                    controller: controller_review,
                  ),
                ),
                GestureDetector(
                onTap: (){
                  CreateReview(event:controller_event.text, review: controller_review.text);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyEvent()));
                },

                child: orangeButton(context, "Submit"),
              )
              ],
            )
        )
    );
  }
}

Future CreateReview({required String event, required String review}) async{
  final docnow=FirebaseFirestore.instance.collection('review').doc();
  final newreview = Review(
    review: review,
    event: event,
  );
  final json=newreview.toJson();
  await docnow.set(json);
}

class Review{
  final String event;
  final String review;
  Review({required this.event, required this.review});
  Map<String, dynamic> toJson()=>{
    'event': event,
    'review': review,
  };
}