import 'package:flutter/material.dart';
import 'package:taxi_e_ten_gi/src/resource/login_taxi.dart';
import 'package:taxi_e_ten_gi/src/resource/register_taxi.dart';

class TaxiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }

}