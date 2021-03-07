import 'package:flutter/material.dart';
import 'Page Three.dart';
import 'nextpage.dart';
import 'main.dart';
import 'image_banner.dart';
import 'Resources.dart';
import 'PaddedTitle.dart';
import 'OrderedLists.dart';

class Learning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255,255,255,1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253,109,91,0.9),
          title: const Text(
              'Learning',
              style: TextStyle(
                  fontFamily: 'Metropolis',
              ),
          ),
        ),
        body:
        SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              ImageBanner("assets/images/pexels-jakub-novacek-924824.jpg"),
              PaddedTitle("Computers / Technology"),
              ListTile(
                leading: Icon(Icons.code),
                title: Links("Youth Teaching Adults",
                    "https://youthteachingadults.ca/resources/"),
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Links("Computer Training at Nepean Seniors Centre",
                    "https://nepeanseniorscentre.ca/technology/computer-training/"
                ),
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Links("ConnectedCanadians",
                    "https://www.connectedcanadians.ca/"
                ),
              ),
              PaddedTitle("Continuing Education"),
              ListTile(
                leading: Icon(Icons.book),
                title: Links("Independent Learning Centre",
                    "https://www.ilc.org/"),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Links("Learning in Retirement",
                    "https://carleton.ca/linr/"),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Links("Coursera",
                    "https://www.coursera.org/"),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Links("edX",
                    "https://www.edx.org/"),
              ),
              PaddedTitle("Music / Arts Lessons"),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Links("Allegro Music Schools (online lessons)",
                    "https://www.allegromusicschools.com/online-music-lessons"),
              ),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Links("Ottawa Music School (online lessons)",
                    "https://canadamusicacademy.ca/Ottawa_Music_School/"),
              ),
              ListTile(
                leading: Icon(Icons.music_note),
                title: Links("Ottawa School of Art",
                    "https://artottawa.ca/register-for-a-class/"),
              ),
           ],
          ),
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
              title: Text('Activities'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree())
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
              title: Text('Resources'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Resources())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
