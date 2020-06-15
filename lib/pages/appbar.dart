import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Image.asset("assets/drawer.dart.jpeg",height: 20.0,),
      title:Image.asset("assets/rosen.jpeg",height: 30.0,),
      actions: <Widget>[
        Image.asset("assets/homepage.jpeg",height: 15.0,)
      ],
    );
  }
}
