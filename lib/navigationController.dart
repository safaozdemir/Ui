import 'package:eventsapp/Screens/discoverScreen.dart';
import 'package:eventsapp/Screens/fresh.dart';
import 'package:eventsapp/Screens/homeScreen.dart';
import 'package:eventsapp/Screens/searchScreen.dart';
import 'package:flutter/material.dart';

import 'package:eventsapp/CustomeWidgets/customeAppBar.dart';
import 'package:flutter/material.dart';

class NavigationController extends StatefulWidget {
  const NavigationController({Key? key}) : super(key: key);

  @override
  State<NavigationController> createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController> {
  int _currentIndex = 0;
  List<Widget> body = const [
    HomeScreen(),
    DiscoverScreen(),
    Fresh(),
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(unselectedItemColor: Colors.grey,selectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ' '),
        ],
      ),
    );
  }
}
