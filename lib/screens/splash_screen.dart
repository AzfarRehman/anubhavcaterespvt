import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anubhavcaterespvt/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller.repeat(period: const Duration(milliseconds: 100));

  }

  @override void dispose()
  {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 260),
              child: AnimatedBuilder(

                animation: _controller,
                builder: (_, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2 * pi,

                    child: child,
                  );
                },
                child: Image.asset("assets/images/logo.png" ,width: 180,),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Column(

                children: [
                  const Text("ANUBHAV CATERERS PVT.LTD", style: TextStyle(
                    color: Colors.amber,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 9,),
                  LinearProgressIndicator(
                    value: _controller.value,
                    backgroundColor: Colors.white10,
                    semanticsLabel: 'Linear progress indicator',color: Colors.amber,
                  ),
                  const SizedBox(height: 8,),
                  const Text("EVENTS,CATERERS,LIFT,INSURANCE,TILE", style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
