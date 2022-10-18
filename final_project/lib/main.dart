import 'package:flutter/material.dart';
import 'package:final_project/login.dart';
import 'package:final_project/home.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
    'login': (context)=> MyLogin(),
     'home': (context) => MyHome(),
    },
    )

    );
}

