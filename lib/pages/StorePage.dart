import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  StoreState createState() => StoreState();
}

class StoreState extends State<StorePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Store',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,)
      ),
    );
  }

}