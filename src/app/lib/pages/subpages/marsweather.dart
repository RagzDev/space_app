import 'package:flutter/material.dart';

class MarsWeather extends StatefulWidget {
  const MarsWeather({super.key});

  @override
  State<MarsWeather> createState() => _MarsWeatherState();
}

class _MarsWeatherState extends State<MarsWeather> {
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
