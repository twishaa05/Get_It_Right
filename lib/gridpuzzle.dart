import 'dart:async';
import 'package:flutter/material.dart';


class GridPuzzle extends StatefulWidget {
  @override
  _GridPuzzleState createState() => _GridPuzzleState();
}

class _GridPuzzleState extends State<GridPuzzle> {
  List<String> imageNames = [
    'birthright0', 'birthright1', 'birthright2', 'birthright3', 'birthright4',
    'birthright5', 'birthright6', 'birthright7', 'birthright8'
  ];

  // Storing the correct positions of the images for validation
  Map<int, String> correctPositions = {
    0: 'birthright0', 1: 'birthright1', 2: 'birthright2',
    3: 'birthright3', 4: 'birthright4', 5: 'birthright5',
    6: 'birthright6', 7: 'birthright7', 8: 'birthright8'
  };

  Map<int, String?> targetGrid = {};
  Timer? _timer;
  int _timeLeft = 180; // 3 minutes timer
  int _score = 0;

  @override
  void initState() {
    super.initState();
    resetGame(); // Initialize the game settings
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeLeft > 0) {
        setState(() {
          _timeLeft--;
          _score = _timeLeft * 10; // Score calculation based on remaining time
        });
      } else {
        _timer?.cancel();
        showEndDialog(false); // Show end dialog if time runs out
      }
    });
  }

  void resetGame() {
    setState(() {
      targetGrid.clear();
      imageNames.shuffle(); // Shuffle images for the random sequence
      _timeLeft = 180;
      if (_timer != null) {
        _timer!.cancel();
      }
      startTimer();
    });
  }

  void exitGame() {
    _timer?.cancel();
    Navigator.of(context).pop();
  }

  void _checkCompletion() {
    if (targetGrid.length == imageNames.length) {
      bool isCompleted = true;
      bool allIncorrect = true;
      targetGrid.forEach((index, value) {
        if (value != correctPositions[index]) {
          isCompleted = false;
        } else {
          allIncorrect = false;
        }
      });

      if (isCompleted) {
        _timer?.cancel();
        showEndDialog(true);
      } else if (allIncorrect) {
        showEndDialog(false);
      }
    }
  }

  void showEndDialog(bool isSuccess) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isSuccess ? 'Congratulations!' : 'Try Again!'),
        content: Text(isSuccess ? 'You have correctly completed the puzzle!\nYour score: $_score' : 'All pieces are placed incorrectly.'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (!isSuccess) {
                resetGame(); // Offer to reset the game if not successful
              }
            },
            child: Text('Reset'),
          ),
          TextButton(
            onPressed: () => exitGame(),
            child: Text('Exit'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solve the Puzzle'),
        backgroundColor: Colors.teal,  // Set AppBar color
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Time Remaining: $_timeLeft s", style: TextStyle(fontSize: 20)),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return DragTarget<String>(
                    onWillAccept: (data) => targetGrid[index] == null,
                    onAccept: (data) {
                      setState(() {
                        targetGrid[index] = data;
                        _checkCompletion();
                      });
                    },
                    builder: (context, candidateData, rejectedData) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        alignment: Alignment.center,
                        child: targetGrid[index] != null
                            ? Image.asset('assets/puzzle/${targetGrid[index]}.jpg', fit: BoxFit.cover)
                            : Container(color: Colors.white24),
                      );
                    },
                  );
                },
              ),
            ),
            Text('Drag the pieces to their correct positions', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              children: List<Widget>.generate(imageNames.length, (index) {
                return Draggable<String>(
                  data: imageNames[index],
                  child: targetGrid.containsValue(imageNames[index])
                      ? Container()
                      : Image.asset('assets/puzzle/${imageNames[index]}.jpg', width: 60),
                  feedback: Image.asset('assets/puzzle/${imageNames[index]}.jpg', width: 60, height: 60),
                  childWhenDragging: Container(),
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: resetGame,
                  child: Text('Reset'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                ),
                ElevatedButton(
                  onPressed: exitGame,
                  child: Text('Exit'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}