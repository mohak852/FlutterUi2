import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Widget _daily(String text,int Discount,int original,String model){
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      // height: 90.0,
      width: 350.0,
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
            width: 210.0,
            padding: EdgeInsets.all(10.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               Row(
                 children: <Widget>[
                   SizedBox(width: 150.0,),
                   Icon(Icons.delete)
                 ],
               ),
                SizedBox(height: 30.0,),
                Row(
                  children: <Widget>[
                    Text("$text",style: TextStyle(
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
                    Text("Free Cargo",style: TextStyle(
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Image.asset("assets/drawer.dart.jpeg",height: 40.0,),
                SizedBox(width: 90.0),
                Image.asset("assets/rosen.jpeg",height: 30.0,),
                SizedBox(width: 110.0),
                Image.asset("assets/homepage.jpeg",height: 30.0,),
              ],
            ),
            SizedBox(height: 10.0,),
            Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 5.0,
                    )]
                ),
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
                )
            ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text("My Shopping Cart",style: TextStyle(
                      color: Colors.black38,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 15.0,),
                    Text("5 products",style: TextStyle(
                        color: Colors.black38,
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal
                    ),),

                  ],
                ),
              ),

            ],
          ),

            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _daily("Sunt planetae,", 89, 259, "assets/model1.jpeg"),
                  _daily("Sunt planuetaes ", 89, 259, "assets/model2.jpeg"),
                  _daily("Sunt planuetaes", 89, 259, "assets/model3.jpeg"),
                  Image.asset("assets/cart.jpeg")
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
