import 'package:flutter/material.dart';
import 'Page Three.dart';
import 'main.dart';
import 'LearningResources.dart';
import 'image_banner.dart';
import 'textsection.dart';
import 'PaddedTitle.dart';


class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255,1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253,109,91,0.9),
        title: const Text('Community Events'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/pexels-jakub-novacek-924824.jpg"),
          TextSection("Indoor Events", "not currently available"),
          TextSection("Online Events", "list of events"),
          TextSection("Outdoor Events", "list of events"),
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
              title: Text('Activities'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree())
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
          ],
        ),
      ),
    );
  }
}
