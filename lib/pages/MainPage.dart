import 'package:MyProvider/pages/CarePage.dart';
import 'package:MyProvider/pages/DashboardPage.dart';
import 'package:MyProvider/pages/ProfilePage.dart';
import 'package:MyProvider/pages/StorePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  MainState createState() => MainState();
}

class  MainState extends State<MainPage>{
  int navBottomIndex = 0;
  List<Widget> bodyPage=[
    DashboardPage(),
    StorePage(),
    CarePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyPage[navBottomIndex],
      bottomNavigationBar: bottomNavigationLayouts(),
    );
  }

  Widget bottomNavigationLayouts(){
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            navBottomIndex = index;
          });
        },
        currentIndex: navBottomIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home_rounded,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.home_rounded,
              color: Colors.grey,
            ),
            title: new Text(
              'Dashboard',
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.store,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.store,
              color: Colors.grey,
            ),
            title: new Text('XL Store'),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.local_florist,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.local_florist,
              color: Colors.grey,
            ),
            title: new Text('XL care'),
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person_outline_rounded,
              color: Colors.blue,
            ),
            icon: new Icon(
              Icons.person_outline_rounded,
              color: Colors.grey,
            ),
            title: new Text('Profile'),
          ),
        ]
    );
  }

  
}