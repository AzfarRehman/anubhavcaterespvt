
import 'dart:async';

import 'package:anubhavcaterespvt/screens/bottomapp_bar.dart';
import 'package:anubhavcaterespvt/screens/home_page.dart';
import 'package:anubhavcaterespvt/screens/otp.dart';
import 'package:anubhavcaterespvt/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

Future<void> main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;



  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      darkTheme: ThemeData(
          primaryColorDark: Colors.black
      ),
      debugShowCheckedModeBanner: false,

      home: const BottomBar(),
    );
  }
}
