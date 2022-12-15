import 'package:flutter/material.dart';

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
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/images/1.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45.0),
                child: Text("I'm Steve Milner \n WEB DESIGNER",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Text(
                  "I'm a Tunisian based web designer & frontend \n developer focused on crafting clean & userfriendly experiences,\n I am passionate about building excellent software that improves the lives of those around me.")
            ],
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
      ][currentPageIndex],
    );
  }
}
