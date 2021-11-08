
import 'package:anubhavcaterespvt/screens/bottomapp_bar.dart';
import 'package:anubhavcaterespvt/screens/home_page.dart';
import 'package:anubhavcaterespvt/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
