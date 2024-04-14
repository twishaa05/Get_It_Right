import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPage extends StatelessWidget {
  // URLs for each tutorial
  final String _url1 = 'https://youtu.be/tF4G8e5zKuw';
  final String _url2 = 'https://youtu.be/CzVZ7s1RtBk';
  final String _url3 = 'https://youtu.be/reQAC4JHIi4';
  final String _url4 = 'https://youtu.be/0MvlWD0P0rM';

  // Method to launch URLs
  Future<void> _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial Videos", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(fontSize: 16),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(300, 60), // Ensuring all buttons are the same size
                ),
                onPressed: () => _launchURL(_url1),
                child: Text('Tutorial: FREEDOM OF DECISION MAKING ENGLISH'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(fontSize: 16),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(300, 60),
                ),
                onPressed: () => _launchURL(_url2),
                child: Text('Tutorial: RIGHT TO FREEDOM OF ASSOCIATION HINDI'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(fontSize: 16),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(300, 60),
                ),
                onPressed: () => _launchURL(_url3),
                child: Text('Tutorial: FREEDOM OF EXPRESSION'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(fontSize: 16),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(300, 60),
                ),
                onPressed: () => _launchURL(_url4),
                child: Text('Tutorial: FREEDOM OF OPINION HINDI'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
