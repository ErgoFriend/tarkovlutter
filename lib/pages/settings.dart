import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Yellow extends StatefulWidget {
  @override
  _YellowState createState() => _YellowState();
}

class _YellowState extends State<Yellow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://movielovegamer.com/wp-content/uploads/2019/10/preliminaryPatchnotes_012.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
