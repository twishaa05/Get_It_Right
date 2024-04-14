import 'package:flutter/material.dart';

import 'main.dart';

class HelplineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
          onPressed: () {
            Navigator.pop(
              context
            );// Handle back button press
          },
        ),
        iconTheme: const IconThemeData(color: Colors.black), // Set color of all icons
        title: const Text(
          'Get It Right',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'poppins'),
        ), // Set color and font weight of the title text
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Emergency Helpline Numbers:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
            ),
            SizedBox(height: 8),
            _buildHelplineItem('Child-line', '1098'),
            _buildHelplineItem('BBA Complaint cell (Bachpan bachao Andolan)', '18001027222'),
            _buildHelplineItem('Ambulance', '102'),
            SizedBox(height: 16),
            Text(
              'Legal Assistance:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
            ),
            SizedBox(height: 8),
            _buildLegalInfoItem(
              'National Legal Services Authority (NALSA)',
              '1800-345-7606',
              'Provides free legal aid to the weaker sections of society.',
            ),
            _buildLegalInfoItem(
              'Smile Foundation',
              'Contact local bar association for legal assistance.',
              'Legal professionals who can provide guidance and representation.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHelplineItem(String title, String number) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 3,
      child: ListTile(
        title: Text(title, style: TextStyle(fontFamily: 'Poppins')),
        subtitle: Text(number, style: TextStyle(fontFamily: 'Poppins')),
        onTap: () {
          // Add functionality to call the helpline number
        },
      ),
    );
  }

  Widget _buildLegalInfoItem(String title, String number, String description) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 3,
      child: ListTile(
        title: Text(title, style: TextStyle(fontFamily: 'Poppins')),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(number, style: TextStyle(fontFamily: 'Poppins')),
            Text(description, style: TextStyle(fontFamily: 'Poppins')),
          ],
        ),
        onTap: () {
          // Add functionality to call the legal helpline or show more information
        },
      ),
    );
  }
}