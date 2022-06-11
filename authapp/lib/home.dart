// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:authapp/login.dart';
import 'package:authapp/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0 : Profile',
      style: optionStyle,
    ),
    Text(
      'Index 1 : Home',
      style: optionStyle,
    ),
    Text(
      'Index 2 : Message',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Widget> homedata = <Widget>[];
    homedata.add(Container(
        child: Center(
          child: Text("Profile Page"),
        ),
    ));
    homedata.add(Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => LoginPage())
                );
              }, 
              child: Text("Log In")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => RegisterPage())
                );
              }, 
              child: Text("Sign Up")
            ),
          ],
        ),
      ));
    homedata.add(Container(
        child: Center(
          child: Text("Messaging Page"),
        ),
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text('The STORE',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Colors.purple)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: homedata.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: 'Message',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );    
  }
}
