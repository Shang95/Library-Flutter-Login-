
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_e_ten_gi/src/resource/login_taxi.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPageFull(),
    );
  }

}

class RegisterPageFull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RegisterPageState();
  }

}

class RegisterPageState extends State<RegisterPageFull>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black54,), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return LoginPage();
          }));
        },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
      ],),
      body: Container(
        color: Colors.white,
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.fromLTRB(30.0, 0, 30, 0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Container(
                  height: 180.0, width: 180.0,
                  child: Image.asset('ic_car_register1.jpg'),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text("Wellcome to Aboard", style: TextStyle(fontSize: 30.0),),),
                Text("Sign up with iCab in simple steps"),
                Padding(padding: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: "Phone Number",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.keyboard),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              5.0))),
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("Sign up", style: TextStyle(fontSize: 20.0),),
                          onPressed: null,),
                  ),),
                Padding(padding: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black54),
                      text: "Already a User? ",
                      children: <TextSpan>[
                        TextSpan(
                          style: TextStyle(color: Colors.blue),
                          text: "Login Now",
                          recognizer: TapGestureRecognizer()..onTap = (){
                          },
                        )
                      ]
                    ),
                  ),)
              ],
            ),),
        ),
      ),
    );
  }

}