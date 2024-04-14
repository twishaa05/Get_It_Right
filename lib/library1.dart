import 'package:flutter/material.dart';


class ChildProtectionUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Child Protection Laws in India'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          ProtectionCard(
            title: 'Integrated Child Protection Scheme (ICPS)',
            description: 'Launched in 2009–10, focuses on protecting children needing care and protection, through government and civil society partnership.',
          ),
          ProtectionCard(
            title: 'Juvenile Justice (Care and Protection) Act',
            description: 'Passed in 2000 and amended in 2015, provides a framework for the care and protection of juveniles in conflict with the law.',
          ),
          ProtectionCard(
            title: 'Prohibition of Child Marriage Act',
            description: 'Implemented in 2006, this act seeks to eliminate child marriages, enhancing the rights and well-being of children.',
          ),
          ProtectionCard(
            title: 'Protection of Children from Sexual Offences Act (POCSO)',
            description: 'Enacted in 2012 to tackle the issues of sexual abuse and exploitation of children.',
          ),
          ProtectionCard(
            title: 'Child Labour (Prohibition and Regulation) Act',
            description: 'Passed in 1986, it aims to prohibit and regulate child labor practices.',
          ),
        ],
      ),
    );
  }
}

class ProtectionCard extends StatelessWidget {
  final String title;
  final String description;

  const ProtectionCard({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}