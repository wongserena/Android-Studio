import 'package:flutter/material.dart';
import 'Page Three.dart';
import 'main.dart';
import 'LearningResources.dart';
import 'image_banner.dart';
import 'PaddedTitle.dart';
import 'Resources.dart';
import 'OrderedLists.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255,255,255,1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253,109,91,0.9),
          title: const Text(
              'Community Events',
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
            PaddedTitle("Entertainment"),
            ListTile(
              leading: Icon(Icons.theater_comedy),
              title: Links(
                  "The Met Opera Free Virtual Shows (virtual)",
                  "https://www.todocanada.ca/city/ottawa/event/the-met-opera-free-virtual-shows/"),
            ),
            ListTile(
              leading: Icon(Icons.theater_comedy),
              title: Links(
                  "Aeolian Phoenix Sessions (virtual)",
                  "https://www.todocanada.ca/city/ottawa/event/aeolian-phoenix-sessions/"),
            ),
            ListTile(
              leading: Icon(Icons.theater_comedy),
              title: Links(
                  "Absolute Comedy (in person)",
                  "https://www.todocanada.ca/city/ottawa/event/"
                      "absolute-comedy-prove-youre-comic-competition/"),
            ),
            ListTile(
              leading: Icon(Icons.theater_comedy),
              title: Links(
                  "Restaurants Canada Show 2021 (virtual)",
                  "https://www.todocanada.ca/city/ottawa/event/"
                      "restaurants-canada-show-2021/"),
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
