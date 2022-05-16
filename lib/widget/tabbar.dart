import 'package:flutter/material.dart';
import 'package:igoplace/screens/home.dart';
import 'package:igoplace/screens/login.dart';
import 'package:igoplace/screens/onboarding.dart';
import 'package:igoplace/screens/signup.dart';

class Tabbar extends StatefulWidget {
  static const routeName = 'tab';
  Tabbar({Key key}) : super(key: key);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Login(),
    HomeScreen(),
    Login(), 
  ];

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tabbar._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex, 
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff8135F9),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                
                AssetImage('asset/image/Frame 50.png',),color: null,
              ),
              label: '')
        ],
      ),
    );
  }
}
