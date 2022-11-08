import 'package:flutter/material.dart';

class AR extends StatefulWidget {
  const AR({super.key});

  @override
  State<AR> createState() => _ARState();
}

class _ARState extends State<AR> {
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
