import 'package:flutter/material.dart';
import 'Matthew_changes.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
