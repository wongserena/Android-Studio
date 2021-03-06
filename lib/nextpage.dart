import 'package:flutter/material.dart';
import 'Page Three.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(63, 55, 106, 0.6),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(63, 55, 106, 1),
          title: const Text('Next Page'),
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
        )
    );;
  }
}
