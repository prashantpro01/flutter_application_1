// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/screens_constants.dart';

//
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(children: [
          DrawerHeader(
              child: Icon(
            Icons.face_2_outlined,
            size: 50,
          )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: () {
              //POP THE DRAWR
              Navigator.pop(context);
              Navigator.pushNamed(context, Screens.homeScreen);
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("S E T T I N G S"),
            onTap: () {
              //POP THE DRAWR
              Navigator.pop(context);
              Navigator.pushNamed(context, Screens.settingsScreen);
            },
          )
        ]),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Go To Second"),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())),
      )),
    );
  }
}
