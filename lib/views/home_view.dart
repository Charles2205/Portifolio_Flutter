import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          Row(
            children: const [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.home),
              ),
              Text(
                "HOME",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      )),
      appBar: AppBar(
        title: Text('Home'),
      ),
    );
  }
}
