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
              'https://www.kindpng.com/picc/m/342-3424362_clip-art-logo-brand-product-design-escape-from.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
