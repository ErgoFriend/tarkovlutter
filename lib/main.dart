import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tarkov guide',
      home: const MyHomePage(title: 'TARKOV Guide'),
      theme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Plan',
      style: optionStyle,
    ),
    Text(
      'Index 1: Map',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://www.mightygamesmag.de/wp-content/uploads/2017/06/Escape-from-Tarkov1.jpg'),
              fit: BoxFit.contain,
            ),
          ),
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeOut,
        items: <Widget>[
          Icon(
            Icons.aspect_ratio,
            size: 30,
            color: Colors.blue.shade400,
          ),
          Icon(
            Icons.map,
            size: 30,
            color: Colors.blue.shade400,
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.blue.shade400,
          ),
        ],
      ),
    );
  }
}
