import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(height: 250.0,),
            Image.asset("assets/3.jpeg"),
            SizedBox(height: 120.0,),
            Center(
              child: GestureDetector(
                  child: Container(
                  height: 50.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(color: Colors.red)
                  ),
                  child: Center(
                    child: Text("GET STARTED",style: TextStyle(
                      color: Colors.red,
                      fontSize: 15.0
                    ),),
                  ),
                ),
                onTap: ()=>Navigator.of(context).pushReplacementNamed('/LoginPage'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
