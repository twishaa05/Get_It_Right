import 'package:flutter/material.dart';
import 'package:t_store/taboogame.dart';
import 'comicstrip.dart';
import 'gridpuzzle.dart';

class GamesList extends StatelessWidget {
  Widget _gap() => const SizedBox(
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Games List', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /*ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GridPuzzle()),
                    );
                  },
                  child: Image.asset('assets/gamelistimg/rightpiecebutton.PNG', width: 200, height: 200),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    primary: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                  ),
                ),*/
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GridPuzzle()),
                    );
                  },
                  child: Image.asset('assets/gamelistimg/rightpiecebutton.PNG'), // Replace 'assets/module4.png' with the actual path to your image
                ),
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabooGame()),
                    );
                  },
                  child: Image.asset('assets/gamelistimg/taboogamebutton.PNG'), // Replace 'assets/module4.png' with the actual path to your image
                ),
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Image.asset('assets/gamelistimg/dungeonbutton.PNG'), // Replace 'assets/module4.png' with the actual path to your image
                ),
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComicStrip()),
                    );
                  },
                  child: Image.asset('assets/gamelistimg/comicbutton.PNG'), // Replace 'assets/module4.png' with the actual path to your image
                ),
                SizedBox(
                  width: 40.0,
                  height: 40.0,
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Image.asset('assets/gamelistimg/scenariosbutton.PNG'), // Replace 'assets/module4.png' with the actual path to your image
                ),
                // Added more space to ensure layout does not overflow
              ],
            ),
          ),
        ),

    );
  }
}

// Other classes like PuzzlePage, TabooPage, etc., remain unchanged as they do not affect the issue addressed.
