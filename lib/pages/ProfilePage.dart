import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<ProfilePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Profile',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,)
      ),
    );
  }

}