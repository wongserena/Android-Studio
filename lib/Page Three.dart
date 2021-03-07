import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'nextpage.dart';
import 'main.dart';
import 'LearningResources.dart';
import 'textsection.dart';
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
          title: const Text('Activities'),
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
          ],
        ),
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Side Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/pexels-jakub-novacek-924824.jpg')
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
              title: Text('Learning Resources'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Learning())
                );
              },
            ),
            ListTile(
              title: Text('Other Resources'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Resources())
                );
              },
            ),
          ],
        ),
      ),
    );;
  }
}