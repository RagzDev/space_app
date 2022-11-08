import 'package:flutter/material.dart';

class Agencies extends StatefulWidget {
  const Agencies({super.key});

  @override
  State<Agencies> createState() => _AgenciesState();
}

class _AgenciesState extends State<Agencies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
