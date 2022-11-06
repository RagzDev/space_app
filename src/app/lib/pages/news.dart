import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
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
              padding: const EdgeInsets.fromLTRB(15, 5, 8, 8),
              child: Text(
                "Breaking News",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
            child: Container(
              height: 150,
              child: Row(
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/cat2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    width: 180,
                  ),
                  Container(
                      height: 120,
                      width: 220,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'News News News',
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc elementum tellus euismod, feugiat ex nec, aliquam leo. Phasellus faucibus tortor eu est aliquam, eu convallis nunc imperdiet. Vestibulum eleifend leo lorem, eu porttitor risus ornare non. Sed fringilla aliquam lectus vitae sollicitudin. Praesent rhoncus sodales rutrum. Phasellus faucibus, massa non scelerisque ultricies, est odio tristique sapien, in ornare nisi magna vitae sapien. Cras pellentesque ornare risus, sit amet imperdiet justo congue sed. Cras aliquet ex egestas erat luctus, non posuere nulla consequat. Nullam egestas vitae odio at laoreet.',
                              style: TextStyle(fontSize: 15.0),
                              textAlign: TextAlign.start,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 8, 8),
              child: Text(
                "Top Stories",
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
                "Trending",
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
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Padding(
          //     padding: const EdgeInsets.fromLTRB(15, 0, 8, 0),
          //     child: Text(
          //       "Schedule",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 30.0,
          //           fontWeight: FontWeight.w400),
          //     ),
          //   ),
          // ),
          // Container(
          //   height: 200,
          //   child: Column(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           height: 50,
          //           color: Colors.blue,
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           height: 50,
          //           color: Colors.blue,
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           height: 50,
          //           color: Colors.blue,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
