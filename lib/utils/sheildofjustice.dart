import 'package:flutter/material.dart';
import 'package:t_store/main.dart';
import 'package:t_store/modules.dart';

import '../gameslist.dart';


class SheildOfJustice extends StatelessWidget {
  const SheildOfJustice({super.key});
  Widget _gap() => const SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Modules()),
            );
          },
        ),
        title: const Text(
          'Survivors Sanctuary',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25, fontFamily: 'Poppins'),
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 5, 0, 2),
                  child: Text(
                    'Getting started!',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'Poppins'
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/survivalintro.PNG'),
                    _gap(),
                    const Text(
                    '🛡️ Right to be Protected from all Sorts of Violence:'

                    'You have the right to be safe from any kind of harm or violence.'
                    'No one should hurt you in ways that are not good for you.'
                    '🤗 Right to be Protected from Neglect:'

                    'You deserve to be taken care of and not ignored or left alone.'
                    'Being cared for is important for your well-being and happiness.'
                    '🤕 Right to be Protected from Physical and Sexual Abuse:'

                    'You should never be hurt physically or in ways that make you uncomfortable.'
                    'Its important to stay safe from anyone who tries to hurt you in these ways'
                    '💊 Right to be Protected from Dangerous Drugs:'

                    'You have the right to be safe from harmful drugs that can make you sick or hurt you.'
                    'Its important to stay away from drugs that can be dangerous for your health.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins'),
                    ),
                    _gap(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GamesList()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow, // Background color
                        onPrimary: Colors.white, // Text and icon color
                      ),
                      child: Text('Start Playing', style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
