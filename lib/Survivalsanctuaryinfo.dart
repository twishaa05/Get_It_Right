import 'package:flutter/material.dart';
import 'package:t_store/main.dart';
import 'package:t_store/modules.dart';

import 'gameslist.dart';

class SurvivorSanctuaryIntro extends StatelessWidget {
  const SurvivorSanctuaryIntro({super.key});
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
                      'Welcome to "Survivors Sanctuary" – where every childs right to survival is celebrated and protected! 🌟 '
                          'Imagine a magical rulebook that ensures you have everything you need to thrive from the moment youre born. '
                          'Heres a sneak peek into what it holds:\n\n'
                          'Right to be Born: You deserve the grandest welcome into this big, beautiful world!\n'
                          'Right to Minimum Standards: Its like having a superhero cape made of nutritious food, a cozy shelter, and clothes that make you feel like royalty!\n'
                          'Right to Live with Dignity: Every child deserves to feel like a prince or princess, surrounded by love and respect.\n'
                          'Right to Health Care: Imagine a magical potion called clean water, delicious food, and a safe environment, keeping you strong and healthy every day!\n\n'
                          'In "Survivors Sanctuary," every childs safety and happiness are top priorities, because youre the real superheroes shaping the future! 🚀🏰',
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
