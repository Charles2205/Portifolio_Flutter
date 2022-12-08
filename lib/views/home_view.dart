import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.blueAccent,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          NavigationDestination(
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              label: 'About'),
          NavigationDestination(
              icon: Icon(
                Icons.work_history_outlined,
                color: Colors.white,
              ),
              label: 'Experience'),
          NavigationDestination(
              icon: Icon(
                Icons.contact_page,
                color: Colors.white,
              ),
              label: 'Contact'),
        ],
      ),
      body: Container(),
    );
  }
}
