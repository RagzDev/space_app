import 'dart:io';

import 'package:app/utils/picapi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 35.0),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 8, 8),
              child: Text(
                "Latest News",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "NASA Telescope recieved signal from Mars",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        )),
                    width: 270,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "NASA Telescope recieved signal from Mars",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        )),
                    width: 270,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "NASA Telescope recieved signal from Mars",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        )),
                    width: 270,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 8, 8),
              child: Text(
                "Images",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 220,
            child: FutureBuilder<List<PicOfTheDay>>(
              future: fetchImage(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print(snapshot.error);
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  return PhotosList(photos: snapshot.data!);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 8, 0),
              child: Text(
                "See More",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 100,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Learn",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                    width: 190,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "AR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                    width: 190,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Images",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                    width: 190,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Videos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )),
                    width: 190,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




              // ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: <Widget>[
                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             image: AssetImage("assets/cat2.png"),
                  //             fit: BoxFit.cover),
                  //         borderRadius: BorderRadius.all(Radius.circular(8))),
                  //     width: 270,
                  //   ),
                  // ),
              //   ],
              // ),