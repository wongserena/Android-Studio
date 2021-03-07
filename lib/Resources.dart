import 'package:flutter/material.dart';
import 'Page Three.dart';
import 'nextpage.dart';
import 'main.dart';
import 'textsection.dart';
import 'image_banner.dart';
import 'LearningResources.dart';
import 'PaddedTitle.dart';
import 'OrderedLists.dart';

class Resources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255,255,255,1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253,109,91,0.9),
          title: const Text(
              'Resources',
            style: TextStyle(
                fontFamily: 'Metropolis'
            ),
          ),
          ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/pexels-jakub-novacek-924824.jpg"),
            PaddedTitle("Music / Arts Lessons"),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Links("Allegro Music Schools (online lessons)",
                  "https://www.allegromusicschools.com/online-music-lessons"),
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
              title: Text('Learning'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Learning())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
