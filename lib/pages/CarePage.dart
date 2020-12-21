import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarePage extends StatefulWidget {
  @override
  CareState createState() => CareState();
}

class CareState extends State<CarePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Care',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,)
      ),
    );
  }

}