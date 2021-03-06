import 'package:flutter/material.dart';
//Matthew's Changes
class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Three'),
        ),
        body: const Center(
            child: Text(
              'This is page three',
              style: TextStyle(fontSize: 24),
            )
        )
    );;
  }
}