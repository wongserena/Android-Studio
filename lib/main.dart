import 'package:flutter/material.dart';
import 'package:flutter_app/Page%20Three.dart';
import 'nextpage.dart';
import 'textsection.dart';
import 'image_banner.dart';
import 'LearningResources.dart';
import 'Resources.dart';

//import 'package:english_words/english_words.dart';
// this is a new comment
//this is me, matthew
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'elderon',
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255,1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1,159,137,0.9),
        title: const Text(
            'elderon',
            style: TextStyle(
              fontFamily: 'Metropolis',
            )
        ),
      ),
      body:
        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            Container(//first container
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/assisted_living_activities.jpg'),
                  ),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
                  },
                  child: new Text('Community Events',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  style:
                    OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      backgroundColor: Color.fromRGBO(161,161,161, 0.6),
                  ),
                ),
            ),
            Container(//second container
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/oldMen_playing_chess.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree()));
                },
                child: new Text('Activities',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Color.fromRGBO(161,161,161, 0.6),
                ),
              ),
            ),
            Container(//third container
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/old_person_online.png'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Learning()));
                },
                child: new Text('Learning Resources',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Color.fromRGBO(161,161,161, 0.6),
                ),
              ),
            ),
            Container(//fourth container
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/mother_and_daughter.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Resources()));
                },
                child: new Text('Resources',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  backgroundColor: Color.fromRGBO(161,161,161, 0.6),
                ),
              ),
            ),
        ],
      ),
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
            child: Text('Side Menu',
              style: TextStyle(
                  fontFamily: 'Metropolis',
                  color: Colors.white, fontSize: 25
                ),
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
              title: Text('Community Events',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                )
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage())
                );
              },
            ),
            ListTile(
              title: Text(
                  'Activities',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                )
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree())
                );
              },
            ),
            ListTile(
              title: Text(
                  'Learning Resources',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
                  )
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Learning())
                );
              },
            ),
            ListTile(
              title: Text(
                  'Resources',
                  style: TextStyle(
                    fontFamily: 'Metropolis',
              )),
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

/*
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
*/
