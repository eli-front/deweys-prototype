import 'package:deweys_pizza/deweysAppBar.dart';
import 'package:deweys_pizza/dewmore.dart';
import 'package:deweys_pizza/homeOption.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routName = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeOption(),
    Text('Hellow'),
    Text('Hi'),
    Dewmore(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 7, 7, 1.0),
      appBar: DeweysAppBar(),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('Menu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text('Locations'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_1),
            title: Text('Other')
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
