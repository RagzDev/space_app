import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<PicOfTheDay>> fetchImage(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://api.nasa.gov/planetary/apod?count=5&api_key=lTx6OCh9etqe9fKm6QQXVsMX6cfeKRxZEvCqEraz'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

// A function that converts a response body into a List<Photo>.
List<PicOfTheDay> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<PicOfTheDay>((json) => PicOfTheDay.fromJson(json)).toList();
}

class PicOfTheDay {
  // final String date;
  final String title;
  final String url;
  final String description;
  final String date;
  final String? copyright;

  const PicOfTheDay(
      {
      // required this.date,
      required this.title,
      required this.url,
      required this.description,
      required this.date,
      required this.copyright});

  factory PicOfTheDay.fromJson(Map<String, dynamic> json) {
    return PicOfTheDay(
      // date: json['date'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      description: json['explanation'] as String,
      date: json['date'] as String,
      copyright: json['copyright'] as String? ?? "NASA",
    );
  }
}

class PhotosList extends StatelessWidget {
  const PhotosList({super.key, required this.photos});

  final List<PicOfTheDay> photos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => new ImageDetailView(
                            photoDetail: photos[index],
                          )));
            },
            child: Container(
              height: 100,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    photos[index].title,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(photos[index].url),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              width: 270,
            ),
          ),
        );
      },
    );
  }
}

class ImageDetailView extends StatelessWidget {
  const ImageDetailView({super.key, required this.photoDetail});

  final PicOfTheDay photoDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              photoDetail.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0),
            ),
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    photoDetail.date,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(photoDetail.copyright!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(photoDetail.url), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              width: 600,
              height: 300,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Description",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              photoDetail.description,
              style: TextStyle(fontSize: 13.0),
            ),
          )
        ],
      ),
    );
  }
}
