import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Plan extends StatefulWidget {
  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://i.imgur.com/SIHOhpV.jpg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
