import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Color.fromRGBO(3, 25, 85, 0),
          child: Padding(
            padding: const EdgeInsets.only(top: 170, left: 70),
            child: Column(
              children: [
                Row(
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.home,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 17, left: 10),
                      child: Text(
                        "HOME",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 17, left: 10),
                      child: Text(
                        "ABOUT",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.work,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 17, left: 10),
                      child: Text(
                        "EXPERIENCE",
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(52, 78, 162, 1),
        title: Text("Home"),
      ),
    );
  }
}
