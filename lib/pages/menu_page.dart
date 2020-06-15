
import 'package:flutter/material.dart';

import 'appbar.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({Key key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int _selectedIndex = 0;
  final padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(onPressed: ()=>Navigator.of(context).pushReplacementNamed('/HomePage'), icon: Icon(Icons.home),color: Colors.red,),
            SizedBox(width: 35.0,),
            IconButton(onPressed: ()=>Navigator.of(context).pushReplacementNamed('/MenuBar'), icon: Icon(Icons.search),color: Colors.red,),
            SizedBox(width: 115.0,),
            IconButton(onPressed: ()=>Navigator.of(context).pushReplacementNamed('/CartPage'), icon: Icon(Icons.favorite_border),color: Colors.red,),
            SizedBox(width: 35.0,),
            IconButton(onPressed: () {}, icon: Icon(Icons.person),color: Colors.red,),
          ],
        ),
        color: Colors.white,
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.shopping_cart,color: Colors.red,), onPressed: ()=>Navigator.of(context).pushReplacementNamed('/CartPage'),
      ),
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Image.asset("assets/drawer.dart.jpeg",height: 20.0,),
        title:Image.asset("assets/rosen.jpeg",height: 30.0,),
        actions: <Widget>[
          Image.asset("assets/homepage.jpeg",height: 15.0,)
        ],
      ),
      body: Row(
        children: <Widget>[
          NavigationRail(
            minWidth: 56.0,
            groupAlignment: 1.0,
            backgroundColor: Colors.red,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            selectedLabelTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 13,
              letterSpacing: 0.8,
              decoration: TextDecoration.none,
              decorationThickness: 2.0,
            ),
            unselectedLabelTextStyle: TextStyle(
              fontSize: 13,
              letterSpacing: 0.8,
            ),
            destinations: [
              buildRotatedTextRailDestination("Books", padding),
              buildRotatedTextRailDestination("Business", padding),
              buildRotatedTextRailDestination("Computers", padding),
              buildRotatedTextRailDestination("Travel", padding),
              buildRotatedTextRailDestination("Sports", padding),
            ],
          ),
          // This is the main content.
          ContentSpace(_selectedIndex)
        ],
      ),
    );
  }
}

NavigationRailDestination buildRotatedTextRailDestination(
    String text, double padding) {
  return NavigationRailDestination(
    icon: SizedBox.shrink(),
    label: Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(text),
      ),
    ),
  );
}

class ContentSpace extends StatelessWidget {
  final int _selectedIndex;

  ContentSpace(this._selectedIndex);

  final List<String> images = [
   "Anathology","Classic","Magical Realism","Fable","Legend","Realistic Fiction","Romance","Short Story","Anthology","Classic","Drama","Fable",
  ];


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 0, 0),
        child: Column(
          children: <Widget>[
            MediaQuery.removePadding(
              context: context,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context,index)=> ListTile(
                  leading: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                  title: Text(images[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

