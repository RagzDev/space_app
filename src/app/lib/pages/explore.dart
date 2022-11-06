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
      body: Column(
        children: [
          Container(
            height: 105,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 120,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 105,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 120,
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
                "Current Missions",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 220,
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
                    width: 270,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 8, 5),
              child: Text(
                "Schedule",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 190,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Artemis Rover",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                        Align(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "24th September 2022",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mission",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                        Align(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mission",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                        Align(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
