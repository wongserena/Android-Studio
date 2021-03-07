import 'package:flutter/material.dart';
import 'Page Three.dart';
import 'nextpage.dart';
import 'main.dart';
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
            PaddedTitle("General Senior Resources"),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Links("Government of Ontario Senior Resources",
                  "https://www.ontario.ca/page/guide-programs-and-services-seniors"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Links("City of Ottawa Resources for people in need",
                  "https://ottawa.ca/en/family-and-social-services/family-and-social-services-covid-19-info/"
                      "resources-people-need#food-resources-isolated-seniors"),
            ),
            PaddedTitle("Health Resources"),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Links("Mental health support",
                  "https://www.canada.ca/en/public-health/services/"
                      "mental-health-services/mental-health-get-help.html"),
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Links("COVID-19 Ontario",
                  "https://covid-19.ontario.ca/index.html"),
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Links("Ontario Government Vaccines for adults",
                  "https://www.ontario.ca/page/vaccines-adults#section-4%5B"),
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
