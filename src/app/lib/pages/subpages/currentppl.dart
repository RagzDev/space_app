import 'package:flutter/material.dart';

class Astronauts extends StatefulWidget {
  const Astronauts({super.key});

  @override
  State<Astronauts> createState() => _AstronautsState();
}

class _AstronautsState extends State<Astronauts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
