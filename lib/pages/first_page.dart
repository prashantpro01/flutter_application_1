// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

//
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //tracker for the current page
  int _selectedPage = 0;

  void _navigationForBottomBar(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  //list of page
  final List _pages = [
    //home page
    HomePage(),
    //profile page
    ProfilePage(),
    //SettingsPage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("1st page")),
        body: _pages[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedPage,
            onTap: _navigationForBottomBar,
            items: [
              //home
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              //profile
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              //settings
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ]));
  }
}
