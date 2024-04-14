import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/main.dart';

class HowToPlay extends StatelessWidget {
  const HowToPlay({super.key});

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
        iconTheme: const IconThemeData(color: Colors.black), // Set color of all icons
        title: const Text(
          'Get It Right',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 8, 0, 2),
                    child: Text(
                      'How To Play?',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[800],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //Padding(padding: EdgeInsets.all(8.0),
                    children: [
                      const Text(
                        'The Right Piece!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      _gap(),
                      Image.asset('assets/icons/rightpiece.jpeg'),
                      const ReadMoreText(
                        'You will have a special puzzle with a certain picture, that is still unknown. It is divided into small pieces that fit in the main grid. '
                            'Arrange the Picture: Its your job now to slide the pieces around to try to put the picture back together. Move one piece at a time to make the picture complete again. Keep Trying: It might take a few tries to get it right, but keep going! Each move gets you closer to solving the puzzle. Celebrate: When you have put all the pieces in the right place and the picture looks perfect, celebrate your success!',
                        trimLines: 2,
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: ' Show more',
                        trimExpandedText: ' Less',
                        moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        style:
                        TextStyle(fontSize: 16, height: 2, fontFamily: 'Poppins'),
                      ),
                      _gap(),
                      const Text(
                        'Taboo: The child Rights Edition!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      _gap(),
                      Image.asset('assets/icons/taboohowtoplay.jpeg'),
                      const ReadMoreText(
                        "Gather Around: Sit with your friends or family in a circle. Chose a partner and start the game"
                            "Each card has a special word about kids' rights.\n"
                            "Guess the Word: try to guess the bold word on the card without using the tabo words mentioned.\n"
                            "Watch Out: Don't say the Taboo words or you won't get a point!\n"
                            "Keep Going: Take turns until all the cards are used up.\n"
                            "Count Your Points: See who guessed the most words right!",
                        trimLines: 2,
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: ' Show more',
                        trimExpandedText: ' Less',
                        moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        style:
                        TextStyle(fontSize: 16, height: 2, fontFamily: 'Poppins'),
                      ),
                      _gap(),
                      const Text(
                        'Recap with RightRangers: The Comic Voyage!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      _gap(),
                      Image.asset('assets/icons/participation.PNG'),
                      const ReadMoreText(
                        "Grab the cool digital comic book filled with stories about children's rights, and get comfy in your favorite reading spot.\n"
                            "Read and Explore: Open the book and follow the colorful stories about rights like playing and learning.\n"
                            "Guess the Word: try to guess the bold word on the card without using the tabo words mentioned.\n"
                            "Learn and Enjoy: Pay attention to the characters' adventures and learn about rights while having fun.\n"
                            "Share, Discuss, and get Creative: Talk about the stories with friends or family. Get inspired to make your own comics about rights!\n",
                        trimLines: 2,
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: ' Show more',
                        trimExpandedText: ' Less',
                        moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        style:
                        TextStyle(fontSize: 16, height: 2, fontFamily: 'Poppins'),
                      ),
                      _gap(),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
  Widget _gap() => const SizedBox(
    height: 20,
  );
}
