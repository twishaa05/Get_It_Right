import 'package:flutter/material.dart';
import 'package:t_store/comicstrip.dart';
import 'package:t_store/howtoplay.dart';
import 'package:t_store/library1.dart';
import 'package:t_store/modules.dart';
import 'package:t_store/shoppingcart.dart';
import 'package:t_store/videosyt.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100), // Adding padding at the top
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/homepageheader.PNG', height: 80, fit: BoxFit.cover), // Made upper image smaller
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 150, // Increase the size of the middle image
              backgroundImage: AssetImage('assets/getitrightlogofinal.PNG'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Modules()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Remove button background color
                    shadowColor: Colors.transparent, // Remove shadow
                    padding: EdgeInsets.zero, // Remove padding
                    elevation: 0,
                  ),
                  child: Image.asset('assets/icons/playbutton.PNG', height: 150, width: 150), // Increased size of buttons
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VideoPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Remove button background color
                    shadowColor: Colors.transparent, // Remove shadow
                    padding: EdgeInsets.zero, // Remove padding
                    elevation: 0,
                  ),
                  child: Image.asset('assets/icons/watchbutton.PNG', height: 150, width: 150), // Increased size of buttons
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HowToPlay()),
                );
              },
              child: Image.asset('assets/icons/howtoplayicon.PNG', height: 65),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChildProtectionUI()),
                );
              },
              child: Image.asset('assets/icons/libraryicon.PNG', height: 65),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const shoppingcart()),
                );
              },
              child: Image.asset('assets/icons/carticon.PNG', height: 65),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/helpicon.PNG', height: 65), // Fixed loading by correcting the path
            label: '',
          ),
        ],
      ),
    );
  }
}