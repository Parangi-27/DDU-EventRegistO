import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:final_project/home.dart';

class MyLogin extends StatefulWidget {
  // const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/loginbg.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 220),
              child: Text(
                'Welcome!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 33
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.39,
                    right: 35,
                    left: 35
                ),
                child: Column(
                  children: [
                    //   Text(
                    //   'Enter Your Valid DDU ID',
                    //   textAlign: TextAlign.left,
                    //   style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    //
                    // ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: 'DDU Email ID',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: <Widget>[
                        ElevatedButton(
                        child: Text('Login'),
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => MyHome()),
                          );},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent,
                            shadowColor: Colors.black,
                            elevation: 15,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                        ),
                      ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
            )
          ],
        )

      ),

    );
  }
}
