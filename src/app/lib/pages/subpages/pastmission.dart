import 'package:flutter/material.dart';

class PastMissions extends StatefulWidget {
  const PastMissions({super.key});

  @override
  State<PastMissions> createState() => _PastMissionsState();
}

class _PastMissionsState extends State<PastMissions> {
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
