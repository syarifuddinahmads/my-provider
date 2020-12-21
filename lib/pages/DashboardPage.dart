import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<DashboardPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dashboard',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,)
      ),
    );
  }

}