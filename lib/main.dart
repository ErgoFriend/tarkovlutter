import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tarkov guide',
      home: const MyHomePage(title: 'TARKOV Guide'),
      theme: ThemeData.dark()
          .copyWith(backgroundColor: const Color.fromARGB(0, 18, 0, 47)),
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
      'Index 0: Business',
      style: optionStyle,
    ),
    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.aspect_ratio),
            title: const Text('plan'),
          ),
          BottomNavigationBarItem(
            icon: Opacity(
              opacity: 0,
              child: Icon(Icons.map),
            ),
            title: const Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: const Text('settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButton: Container(
        width: 90,
        height: 70,
        child: FittedBox(
          alignment: Alignment.topCenter,
          child: FloatingActionButton(
            elevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            child: Icon(Icons.map),
            onPressed: () {
              _onItemTapped(1);
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
