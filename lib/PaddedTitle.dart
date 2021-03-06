import 'package:flutter/material.dart';


class PaddedTitle extends StatelessWidget {
  final String _title;
  PaddedTitle(this._title);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 4.0),
          child:   Text(
              _title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Metropolis',
              )
          ),
        )
    ]
    );
  }
}

