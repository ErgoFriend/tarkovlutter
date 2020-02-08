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
          image: NetworkImage(
              'https://www.mightygamesmag.de/wp-content/uploads/2017/06/Escape-from-Tarkov1.jpg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
