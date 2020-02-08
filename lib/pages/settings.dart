import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Yellow extends StatefulWidget {
  @override
  _YellowState createState() => _YellowState();
}

class _YellowState extends State<Yellow> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: const Text('Map'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: const Text('Album'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: const Text('Phone'),
        ),
      ],
    );
  }
}
