import 'package:flutter/material.dart';
import 'package:training_project_delivery/main.dart';
import 'package:training_project_delivery/profile.dart';

class Navigations extends StatefulWidget {
  @override
  _NavigationsState createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  List tabs = [
    HomePage(),
    Profile(),
  ];
  var index = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index ,
        onTap: (currentindex){
          setState(() {
            index=currentindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            title: Text('Profile'),

          ),
        ],
      ),
    );
  }
}
