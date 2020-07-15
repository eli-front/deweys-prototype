import 'package:deweys_pizza/deweysAppBar.dart';
import 'package:deweys_pizza/dewmore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routName = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Dewmore(),
    Text('Hellow'),
    Text('Hi')
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.people),
            title: Text('Contact'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
