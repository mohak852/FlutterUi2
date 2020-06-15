import 'dart:async';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/FirstPage');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade600,
        body: Container(child: Image(image: AssetImage("assets/spashscreen.jpeg"),fit: BoxFit.fill,),
        ),);
  }
}
