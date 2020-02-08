import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://gamepedia.cursecdn.com/escapefromtarkov_gamepedia/4/43/Map.png?version=f24344a65d77ebcb4cc6d2df01b619d8'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
