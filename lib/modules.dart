import 'package:flutter/material.dart';
import 'package:t_store/main.dart';

class Modules extends StatelessWidget {
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
          'Modules',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
          fontSize: 35),
        ), // Set color and font weight of the title text
      ),

      body: Center(
        child: Column(

          children: [
            const Text(
              'Modules',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                  fontSize: 35),
                textAlign: TextAlign.left,
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the first module button
              },
              child: Image.asset('assets/icons/participation.PNG'), // Replace 'assets/module1.png' with the actual path to your image
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the second module button
              },
              child: Image.asset('assets/icons/riseandshine.PNG'), // Replace 'assets/module2.png' with the actual path to your image
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the third module button
              },
              child: Image.asset('assets/icons/shellofsurvival.PNG'), // Replace 'assets/module3.png' with the actual path to your image
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the fourth module button
              },
              child: Image.asset('assets/icons/shieldofjustice.PNG'), // Replace 'assets/module4.png' with the actual path to your image
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 80, // Adjust height as needed
              width: 80, // Adjust width as needed
              child: Image.asset('assets/icons/howtoplayicon.PNG'),
            ),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 80, // Adjust height as needed
              width: 80, // Adjust width as needed
              child: Image.asset('assets/icons/artgalleryicon.PNG'),
            ),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 80, // Adjust height as needed
              width: 80, // Adjust width as needed
              child: Image.asset('assets/icons/libraryicon.PNG'),
            ),
            label: 'Item 3',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 80, // Adjust height as needed
              width: 80, // Adjust width as needed
              child: Image.asset('assets/icons/carticon.PNG'),
            ),
            label: 'Item 4',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 80, // Adjust height as needed
              width: 80, // Adjust width as needed
              child: Image.asset('assets/icons/helpicon.PNG'),
            ),
            label: 'Item 5',
          ),
        ],
      ),
    );
  }
}
