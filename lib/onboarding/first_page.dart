import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap:  () => Navigator.of(context).pushReplacementNamed('/SecondPage'),
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
            Image.asset("assets/1.jpeg"),
            SizedBox(height: 155.0,),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                FlatButton(
//                  onPressed: ()=>Navigator.of(context).pushReplacementNamed("/LoginPage"),
//                  child: Container(
//                    color: Colors.white,
//                    child: Image.asset("assets/skip.jpeg",height: 35.0,),
//                  ),
//                ),
//                SizedBox(width: 50.0,),
//                FlatButton(
//                  child: Container(
//                    color: Colors.white,
//                    child: Image.asset("assets/downappbar.jpeg",height: 35.0,),
//                  ),
//                ),
//                SizedBox(width: 50.0,),
//                FlatButton(
//                  child: Container(
//                    color: Colors.white,
//                    child: Image.asset("assets/next.jpeg",height: 35.0,),
//                  ),
//                  onPressed: ()=>Navigator.of(context).pushReplacementNamed('/SecondPage'),
//                ),
//              ],
//            )
          ],
        ),
      ),
    );
  }
}
