import 'package:flutter/material.dart';
import 'package:rosen/onboarding/second_page.dart';
import 'package:rosen/onboarding/splash_screen.dart';
import 'package:rosen/onboarding/third_page.dart';
import 'package:rosen/pages/HomePage.dart';
import 'package:rosen/pages/HomePage.dart';
import 'package:rosen/pages/cart_page.dart';
import 'package:rosen/pages/drawer.dart';
import 'package:rosen/pages/loginPage.dart';
import 'package:rosen/pages/menu_page.dart';
import 'package:rosen/pages/register_page.dart';

import 'onboarding/first_page.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/SecondPage':(BuildContext context)=>SecondPage(),
        '/ThirdPage':(BuildContext context)=>ThirdPage(),
        '/HomePage':(BuildContext context)=>Homepage(),
         '/LoginPage':(BuildContext context)=>LoginPage(),
         '/RegisterPage': (BuildContext context)=>RegisterPage(),
        '/MenuBar': (BuildContext context)=>ScreenOne(),
        '/CartPage': (BuildContext context)=>CartPage(),
        '/MenuScreen': (BuildContext context)=>MenuScreen(),
        '/FirstPage': (BuildContext context)=>FirstPage(),
      },
      home: SplashScreen(),
    );
  }
}
