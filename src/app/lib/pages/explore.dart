import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 35.0),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
    );
  }
}
