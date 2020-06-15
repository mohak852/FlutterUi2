import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: new BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 15.0,),
            GestureDetector(
              onTap: ()=>Navigator.of(context).pushReplacementNamed("/LoginPage"),
              child: Container(
                height: 50.0,
                width: 50.0,
                child: Image.asset("assets/skip.jpeg"),
              ),
            ),
            SizedBox(width: 105.0,),
            Container(
              height: 50.0,
              width: 50.0,
              child: Image.asset("assets/downappbar.jpeg"),
            ),
            SizedBox(width: 105.0,),
            GestureDetector(
              onTap:  () => Navigator.of(context).pushReplacementNamed('/ThirdPage'),
              child: Container(
                height: 50.0,
                width: 50.0,
                child: Image.asset("assets/next.jpeg"),
              ),
            ),
          ],
        ),
        color: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 250.0,),
            Image.asset("assets/2.jpeg"),

          ],
        ),
      ),
    );
  }
}
