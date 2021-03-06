import 'package:flutter/material.dart';

class OrderedLists extends StatelessWidget {
  final String _title;
  OrderedLists(this._title);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
              _title,
              style: TextStyle(
                fontFamily: 'Metropolis',
              ),
          ),
        );
  }
}

