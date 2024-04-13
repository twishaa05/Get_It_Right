import 'package:flutter/material.dart';

class ComicStrip extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/comic/comic1.jpg',
    'assets/comic/comic2.jpg',
    'assets/comic/comic3.jpg',
    'assets/comic/comic4.jpg',
    'assets/comic/comic5.jpg',
    'assets/comic/comic6.jpg',
    'assets/comic/comic7.jpg',
    'assets/comic/comic8.jpg',
    'assets/comic/comic9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recap into the Rights'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage(imagePaths[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}