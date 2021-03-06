import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatelessWidget {
  final String _title;
  final String _url;
  Links(this._title, this._url);
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 16.0),
      child: new InkWell(
          child: new Text(
            _title,
            style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 20,
          ),
          ),
          onTap: () => launch(_url)
      ),
    );

  }
}

