import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Next Page'),
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
