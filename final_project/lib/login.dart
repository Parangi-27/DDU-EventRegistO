import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:final_project/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'auth_service.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  AuthService authService = new AuthService();

  Login() async {
    if(_formKey.currentState!.validate()){

      await authService.signInEmailAndPass(emailController.text,passwordController.text ).then((val){
        if(val != null){

          // HelperFunctions.saveUserLoggedInDetails(isLoggedIn : true);
          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyHome()));
        }
      });

    }
  }



  @override
  Widget build(BuildContext context) {

    final emailFeild = Container(
        width: MediaQuery
            .of(context)
            .size
            .width - 48,

      child: TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "DDU Email ID",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
      ),
    );

    final passwordFeild = Container(
      width: MediaQuery
            .of(context)
            .size
            .width - 48,

      child: TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 15),
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )
        ),
      ),
    );

    Widget orangeButton(  BuildContext context,String label) {
      return Container(
          width: MediaQuery
          .of(context)
          .size
          .width - 48,
        padding: EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(30)
        ),
        alignment: Alignment.center,

        child: Text(
          label, style: TextStyle(color: Colors.white, fontSize: 16),),
      );
    }
    // final  loginButton = Material(
    //   elevation: 5,
    //   color: Colors.deepOrangeAccent,
    //   borderRadius: BorderRadius.circular(30),
    //   child: MaterialButton(
    //     padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    //     minWidth: MediaQuery.of(context).size.width,
    //     onPressed: (){
    //       Text("Login", textAlign: TextAlign.center,
    //       style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
    //       );
    //     },
    //   ),
    // );
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/loginbg.png'), fit: BoxFit.cover,



    )
    ),

    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [

                Container(
                  padding: EdgeInsets.only(left: 20, top: 45),
                  child: Text(
                    'DDU Evento',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height:20),
                emailFeild,
              SizedBox(height:20),
                passwordFeild,
                SizedBox(height:20),

                GestureDetector(
                  onTap: (){
                    Login();
                  },

                    child: orangeButton(context,"Login")
                ),
              ],
            ),
          ),
        )
      ),
    ),
    );
  }
}


