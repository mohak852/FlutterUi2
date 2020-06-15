import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [BoxShadow(
                 color: Colors.red[500],
                  offset: Offset(1.0, 6.0),
                  blurRadius: 10.0,
                )]
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 45.0,),
                  Text("Login",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),),
                  SizedBox(height: 100.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width:  20.0),
                      Text("New",style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(width:  20.0),
                      Text("Account",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(30.0),
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0), 
                              ),
                              child: TextField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  fillColor: Colors.grey,
                                  focusColor: Colors.grey,
                                  hoverColor: Colors.grey,
                                  labelText: "Email",
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                autofocus: true,
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0), 
                              ),
                              child: TextField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  fillColor: Colors.grey,
                                  focusColor: Colors.grey,
                                  hoverColor: Colors.grey,
                                  labelText: "Password",
                                  hintText: "Password",
                                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.red,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                autofocus: true,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Container(          
                              height: 50.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.red,
                                boxShadow: [BoxShadow(
                                  color: Colors.red[200],
                                  offset: Offset(1.0, 6.0),
                                  blurRadius: 30.0,
                                )] 
                              ),
                              child: GestureDetector(
                                onTap: ()=>Navigator.of(context).pushReplacementNamed("/HomePage"),
                                  child: Center(
                                  child: Text("Sign In",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0
                            ),
                            Container(
                              child: Row(children: <Widget>[
                                Text("Do you have an account?",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0
                                ),),
                                InkWell(
                                  onTap: ()=>Navigator.of(context).pushNamed('/RegisterPage'),
                                  child: Text("  Register",style: TextStyle(
                                    color: Colors.red,
                                  ),),
                                )
                              ],)
                            ),
                            SizedBox(
                              height: 30.0
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                              FlatButton(onPressed: ()=>{}, child: Container(
                                height: 40.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Text("Google",style: TextStyle(
                                    color: Colors.white
                                  ),)
                                ),
                              ),),
                              FlatButton(onPressed: ()=>{}, 
                              child: Container(
                                height: 40.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Center(
                                  child: Text("Facebook",style: TextStyle(
                                    color: Colors.white
                                  ),)
                                ),
                              ))
                            ],)
                          ],
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}