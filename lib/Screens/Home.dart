import 'dart:ffi';

import 'dart:io';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey.shade900 : Colors.grey.shade300,
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Icon(
                Icons.android,
                size: 80,
                color: darkMode ? Colors.white : Colors.black,
              ),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey.shade900 : Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode
                            ? Color.fromARGB(255, 151, 33, 33)
                            : Colors.grey.shade500,
                        offset: Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1),
                    BoxShadow(
                        color: darkMode ? Colors.grey.shade800 : Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
            ),
            SwitchListTile(
              selected: true,
              secondary: Icon(Icons.swipe_right),
              subtitle: Text("Dark & Light "),
              title: Text("Do you want to switch to dark mood?"),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = !darkMode;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
