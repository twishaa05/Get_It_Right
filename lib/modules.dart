import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:t_store/comicstrip.dart';
import 'package:t_store/howtoplay.dart';
import 'package:t_store/library1.dart';
import 'package:t_store/main.dart';
import 'package:t_store/participationIntro.dart';
import 'package:t_store/Survivalsanctuaryinfo.dart';
import 'package:t_store/shoppingcart.dart';
import 'package:t_store/utils/riseandshine.dart';
import 'package:t_store/utils/sheildofjustice.dart';

class Modules extends StatelessWidget {
  Widget _gap() => const SizedBox(
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );// Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.groups, size: 35, color: Colors.black),
            onPressed: () {
              // Handle premium icon press
            },
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black), // Set color of all icons
        title: Text(
          'Get It Right',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
          fontSize: 25,
          fontFamily: 'poppins'),
        ), // Set color and font weight of the title text
      ),

      body: Center(
        child: Column(
          children: [
            _gap(),
            const Text(
              'Modules',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                  fontSize: 35, fontFamily: 'poppins'),
                textAlign: TextAlign.left,
            ),

            _gap(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ParticipationPathwaysIntro()),
                );
              },
              child: Image.asset('assets/icons/participation.PNG'), // Replace 'assets/module1.png' with the actual path to your image
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurvivorSanctuaryIntro()),
                );
              },
              child: Image.asset('assets/icons/survivorsanctuary.PNG'), // Replace 'assets/module1.png' with the actual path to your image
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RiseAndShine()),
                );
              },
              child: Image.asset('assets/icons/riseandshine.PNG'), // Replace 'assets/module3.png' with the actual path to your image
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SheildOfJustice()),
                );
              },
              child: Image.asset('assets/icons/shieldofjustice.PNG'), // Replace 'assets/module4.png' with the actual path to your image
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
