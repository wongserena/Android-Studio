import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
//Matthew's Changes
class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Three'),
        ),
        body: new Center(
            child: new InkWell(
              child: new Text('This is a link to hex converter',
              ),
              onTap: () => launch('https://www.rgbtohex.net/hextorgb/')
            )
        )
    );;
  }
}