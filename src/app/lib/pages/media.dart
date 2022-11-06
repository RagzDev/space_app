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
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 8, 8),
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
                "Videos",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 160,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 190,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 190,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 160,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 190,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 12, 12, 12),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 190,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 8, 0),
              child: Text(
                "More Content",
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
                          "ISS Views",
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
        ],
      ),
    );
  }
}
