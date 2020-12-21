import 'dart:async';

import 'package:MyProvider/pages/MainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashscreenPage extends StatefulWidget {
  @override
  SplashscreenState createState() => SplashscreenState();
}

class SplashscreenState extends State<SplashscreenPage>{

  @override
  void initState() {
    timerLauncher();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 100,width: 100,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 35,
        child: Text('App Version 5.1.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
      ),
    );
  }

  timerLauncher() async{
    var durations = const Duration(seconds: 1);
    return Timer(durations, ()=>{
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new MainPage();
      }))
    });
  }

}