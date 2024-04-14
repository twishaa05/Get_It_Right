import 'package:flutter/material.dart';
import 'package:t_store/main.dart';
import 'package:t_store/modules.dart';

import '../gameslist.dart';

class RiseAndShine extends StatelessWidget {
  const RiseAndShine({super.key});
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
                      '📚 Right to Education'
                      'Everyone has the right to go to school and learn new things'
                    'You get to grow smarter in different ways by learning and having fun at the same time.'
                        '🧠 Right to Learn:'

                        'You have the opportunity to learn and develop your feelings, thoughts, and body.'
                    'Learning helps you become a happy and healthy person.'
                    '🎮 Right to Relax and Play:'

                    'You have the right to have fun, relax, and play.'
                    'Playing is important for your growth and development.'
                        '💖 Right to all Forms of Development - Emotional, Mental and Physical'

                    'Youre entitled to grow emotionally, mentally, and physically'
                    'Becoming the best person you can be means growing in all these ways.',
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
