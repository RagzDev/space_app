import 'package:flutter/material.dart';

class Media extends StatefulWidget {
  const Media({super.key});

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Media",
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
