import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Widget _daily(String text,int Discount,int original,String model) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      // height: 90.0,
      width: 320.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 2),
              blurRadius: 3.0,
            )
          ],
          color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            height: 170.0,
            width: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("$model"),
                  fit: BoxFit.cover
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),

          Container(
            width: 180.0,
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 30.0,),
                Row(
                  children: <Widget>[
                    Text("$text", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0,
                    ),)
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    SmoothStarRating(
                      rating: 3.5,
                      isReadOnly: false,
                      size: 15,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star_half,
                      defaultIconData: Icons.star_border,
                      starCount: 5,
                      allowHalfRating: true,
                      spacing: 2.0,
                      onRated: (value) {
                        print("rating value -> $value");
                        // print("rating value dd -> ${value.truncate()}");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Text(
                      "\$$Discount",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          decoration:
                          TextDecoration.lineThrough),
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      "\$$original",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Text("Free Cargo", style: TextStyle(
                      color: Colors.red,
                      fontSize: 15.0,
                    ),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _photo(String url){
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("$url"),
          fit: BoxFit.cover
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(width: 120.0,),
              Icon(Icons.favorite_border,size: 25.0,color: Colors.red,),
            ],
          ),
        ],
      ),
    );
  }

  int _currentIndex = 0;
  final List<Widget> _children = [];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
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
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.shopping_cart,color: Colors.red,), onPressed: () {},
      ),
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    "assets/drawer.dart.jpeg",
                    height: 40.0,
                  ),
                  SizedBox(width: 90.0),
                  Image.asset(
                    "assets/rosen.jpeg",
                    height: 30.0,
                  ),
                  SizedBox(width: 110.0),
                  Image.asset(
                    "assets/homepage.jpeg",
                    height: 30.0,
                  ),
                ],
              ),

              Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 10.0,
                        )
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Product, category search",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      // height: 50.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(120.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(0, 2),
                                        blurRadius: 4.0,
                                      )
                                    ]),
                                child: Icon(
                                  Icons.laptop_mac,
                                  color: Colors.grey,
                                  size: 40.0,
                                )),
                            Text(
                              "All",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),),
                    Container(
                      // height: 50.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(120.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2),
                                      blurRadius: 4.0,
                                    )
                                  ]),
                              child: Icon(
                                AntDesign.phone,
                                color: Colors.grey,
                                size: 40.0,
                              )),
                          Text(
                            "Phone",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),),
                    Container(
                      // height: 50.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(120.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2),
                                      blurRadius: 4.0,
                                    )
                                  ]),
                              child: Icon(
                                AntDesign.alipay_circle,
                                color: Colors.grey,
                                size: 40.0,
                              )),
                          Text(
                            "Electronics",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),),
                    Container(
                      // height: 50.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(120.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2),
                                      blurRadius: 4.0,
                                    )
                                  ]),
                              child: Icon(
                                AntDesign.tool,
                                color: Colors.grey,
                                size: 40.0,
                              )),
                          Text(
                            "Tool",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),),Container(
                      // height: 50.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(120.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2),
                                      blurRadius: 4.0,
                                    )
                                  ]),
                              child: Icon(
                                AntDesign.ie,
                                color: Colors.grey,
                                size: 40.0,
                              )),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),),Container(
                      // height: 50.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(120.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2),
                                      blurRadius: 4.0,
                                    )
                                  ]),
                              child: Icon(
                                AntDesign.indent_right,
                                color: Colors.grey,
                                size: 40.0,
                              )),
                          Text(
                            "FastTrack",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),),
                    Container(
                      // height: 50.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(120.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 2),
                                      blurRadius: 4.0,
                                    )
                                  ]),
                              child: Icon(
                                AntDesign.API,
                                color: Colors.grey,
                                size: 40.0,
                              )),
                          Text(
                            "Api",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 4.0,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Image.asset("assets/imgpsh_fullsize_anim.jpeg"),
                  ),
                  Image.asset("assets/spacer.jpeg"),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Daily opportunity",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 120.0,
                          ),
                          Container(
                            // height: 30.0,
                            width: 85.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 2),
                                    blurRadius: 3.0,
                                  )
                                ]),
                            child: Center(
                                child: Text(
                                  "3109:19:25",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    _daily("T-shirt Mens", 473, 89,"assets/model1.jpeg"),
                    _daily("T-shirt  Jeans", 480, 90,"assets/model2.jpeg"),
                    _daily("Jeans  Pants", 460, 80,"assets/model3.jpeg"),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    _photo("assets/model1.jpeg"),
                    _photo("assets/model2.jpeg"),
                    _photo("assets/model5.jpg"),
                    _photo("assets/model1.jpeg"),
                    _photo("assets/model2.jpeg"),
                    _photo("assets/model5.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}