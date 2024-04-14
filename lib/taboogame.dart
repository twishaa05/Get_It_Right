import 'dart:async';
import 'package:flutter/material.dart';


class TabooGame extends StatefulWidget {
  @override
  _TabooGameState createState() => _TabooGameState();
}

class _TabooGameState extends State<TabooGame> {
  int _currentIndex = 0;
  int _score = 0;
  int _tabooScore = 0;
  int _skipCount = 0;
  Timer? _timer;
  int _timeLeft = 120; // Time in seconds for 2 minutes

  List<String> _images = [
    'assets/icons/taboo1.jpeg',
    'assets/icons/taboo2.jpeg',
    'assets/icons/taboo3.jpeg',
    'assets/icons/taboo4.jpeg',
    'assets/icons/taboo5.jpeg',
    'assets/icons/taboo6.jpeg',
    'assets/icons/taboo7.jpeg',
    'assets/icons/taboo8.jpeg',
    'assets/icons/taboo9.jpeg',
    'assets/icons/taboo10.jpeg'
  ];

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeLeft > 0) {
        setState(() {
          _timeLeft--;
        });
      } else {
        timer.cancel();
        showEndDialog();
      }
    });
  }

  void nextImage(int scoreIncrement) {
    setState(() {
      if (_currentIndex < _images.length - 1) {
        _currentIndex++;
        _score += scoreIncrement;
      } else {
        _timer?.cancel();
        showEndDialog();
      }
    });
  }

  void tabooAction() {
    setState(() {
      _tabooScore++;
      nextImage(0);
    });
  }

  void skipImage() {
    if (_skipCount < 2) {
      setState(() {
        _skipCount++;
        nextImage(0);
      });
    }
  }

  void showEndDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Time's Up!"),
        content: Text("Your score: $_score\nTaboo actions: $_tabooScore"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taboo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Colors.deepPurple[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Time: $_timeLeft s", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Score: $_score | Taboo: $_tabooScore", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                _images[_currentIndex],
                width: MediaQuery.of(context).size.width * 0.9,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: skipImage,
                  child: Image.asset('assets/icons/tabooskip.PNG', width:80),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.zero, // Removing additional padding
                  ),
                ),
                ElevatedButton(
                  onPressed: tabooAction,
                  child: Image.asset('assets/icons/taboocross.PNG', width: 80),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => nextImage(1),
                  child: Image.asset('assets/icons/tabootick.PNG', width: 80),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}