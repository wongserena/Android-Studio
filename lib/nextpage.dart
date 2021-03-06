import 'package:flutter/material.dart';
import 'Page Three.dart';
import 'main.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255,255,255,1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253,109,91,0.9),
          title: const Text('Community Events'),
          actions: <Widget> [
            IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next page',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return PageThree();
                      }
                  ));
                }
            )
          ],
        ),
        body: const Center(
            child: Text(
              'This is the next page',
              style: TextStyle(fontSize: 24),
            )
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
            )
          ],
        ),
      ),
    );
  }
}
