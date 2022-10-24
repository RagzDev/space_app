import 'package:app/pages/explore.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/media.dart';
import 'package:app/pages/news.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  var _currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    News(),
    Media(),
    Explore()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.newspaper),
            title: Text("News"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.image),
            title: Text("Media"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.explore),
            title: Text("Explore"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
