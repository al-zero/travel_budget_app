import 'package:flutter/material.dart';
import 'package:travel_budget_app/pages.dart';

import 'home_view.dart';

class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    ExplorePage(),
    PastTripsPage(),
  ];

  void onTabTapped(int index){
  setState(() {
    _currentIndex = index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Travel Budget App'),
      ),
      body:  _children[_currentIndex ],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.account_balance),
            title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.explore),
              title: new Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.history),
              title: new Text('Past Trips'),
            ),

          ]),
    );
  }
}