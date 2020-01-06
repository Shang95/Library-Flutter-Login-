import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_e_ten_gi/src/resource/register_taxi.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }

} 

class LoginState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100.0
              ),
              Container(
                width: 180.0,
                height: 180.0,
                child: Image.asset('ic_car_login.jpg'),),
              Padding(padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                child: Text("Wellcom back", style: TextStyle(fontSize: 25.0),),),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text("Login to continue Cap", style: TextStyle(fontSize: 25.0),),),
              Padding(padding: EdgeInsets.fromLTRB(0, 80.0, 0, 0),
                child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline),
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  )
                ),
              ),),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.keyboard_hide),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                ),
              ),),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(
                alignment: AlignmentDirectional.centerEnd,
                child: RichText(
                  text: TextSpan(
                    text: "Forgot password?",
                    style: TextStyle(color: Colors.black, fontSize: 17, decoration: TextDecoration.underline)
                  ),
                ),
              ),),
              Padding(padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Sign in", style: TextStyle(fontSize: 20.0),),
                      onPressed: null,
                ),
              ),),
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: RichText(
                  text: TextSpan(
                    text: "New user? ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Sign up for a new account",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return RegisterPage();
                          }));
                        }
                      )
                    ]
              )),)
            ],
          ),
        ),


      ),
    );
    
  }


  void onPressedSignIn() {
  }
}