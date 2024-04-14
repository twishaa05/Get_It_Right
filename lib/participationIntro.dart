import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/main.dart';
import 'package:t_store/modules.dart';

import 'gameslist.dart';

class ParticipationPathwaysIntro extends StatelessWidget {
  const ParticipationPathwaysIntro({super.key});
  Widget _gap() => const SizedBox(
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Modules()),
            );// Handle back button press
          },
        ),
        iconTheme: const IconThemeData(color: Colors.black), // Set color of all icons
        title: const Text(
          'ParticipationPathways',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'poppins'),
        ), // Set color and font weight of the title text
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
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //Padding(padding: EdgeInsets.all(8.0),
                    children: [
                      Image.asset('assets/icons/participationintroimage.png'),
                      _gap(),
                      const Text(
                        'Imagine you are the captain of a super fun team where everyones ideas are like treasures waiting to be discovered! '
                            '🚀💡 Just like picking the coolest game with your friends, the right to participation means you get to share '
                            'your thoughts and have a say in how things are done. Here is how it works:\n\n'
                            'Freedom of Opinion: Youre free to think whatever pops into your awesome brain!\n'
                            'Freedom of Expression: Share those thoughts with the world—whether its through words, art, or even dance moves!\n'
                            'Freedom of Association: Hang out with whoever makes you feel like the coolest superhero, and make them feel like one too!\n'
                            'Participate in Decision Making: Whether its choosing the next adventure or solving a mystery, your voice matters, and youre a key player in making things happen!',
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
            )),
      ),
    );
  }
}

