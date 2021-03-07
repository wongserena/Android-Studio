import 'package:flutter/material.dart';
import 'nextpage.dart';
import 'main.dart';
import 'LearningResources.dart';
import 'image_banner.dart';
import 'PaddedTitle.dart';
import 'Resources.dart';
import 'OrderedLists.dart';

//Matthew's Changes
class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255,255,255,1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253,109,91,0.9),
          title: const Text(
              'Activities',
            style: TextStyle(
                fontFamily: 'Metropolis',
            ),
          ),
          ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/pexels-jakub-novacek-924824.jpg"),
            PaddedTitle("Literary / Fine Arts"),
            ListTile(
              leading: Icon(Icons.edit),
              title: Links(
                  "Story Planet: Constellation Adult Writing Workshop Series",
              "https://www.todocanada.ca/city/ottawa/event/story-"
                  "planet-constellation-adult-writing-workshop-series/"),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Links(
                  "Pixel Art",
                  "https://www.pixilart.com/"),
            ),
            PaddedTitle("Games / Brain Teasers"),
            ListTile(
              leading: Icon(Icons.emoji_objects),
              title: Links(
                  "Play Sudoku",
                  "https://sudoku.com/"),
            ),
            ListTile(
              leading: Icon(Icons.emoji_objects),
              title: Links(
                  "Play Minesweeper",
                  "https://minesweeperonline.com/"),
            ),
            ListTile(
              leading: Icon(Icons.emoji_objects),
              title: Links(
                  "Jigsaw Puzzles",
                  "https://www.jigsawplanet.com/"),
            ),
          ],
        ),
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(85, 221, 201, 1),
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo1.png')
                  )
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyStatelessWidget())
                );
              },
            ),
            ListTile(
              title: Text('Community Events'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage())
                );
              },
            ),
            ListTile(
              title: Text('Learning'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Learning())
                );
              },
            ),
            ListTile(
              title: Text('Resources'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Resources())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}