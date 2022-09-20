import 'package:flutter/material.dart';
import 'package:multiscreen_app/drawer.dart';
import 'package:multiscreen_app/screen2.dart';

class ScreenOne extends StatefulWidget {
  static var routeName = 'screen1route';
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ScreenOneState();
  }
}

class _ScreenOneState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: pages[selectedPageIndex],
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _x1,
        currentIndex: selectedPageIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.flag_circle), label: 'tab1'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'tab2'),
        ],
      ),
    );
  }

  AppBar myAppBar() => AppBar(
        title: const Text("screen 1"),
      );

  int selectedPageIndex = 0;
  void _x1(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  var pages = const [
    Scaffold(
      body: Center(
          child: Text(
        "this is screen 1 from bottom",
        style: TextStyle(fontSize: 32),
      )),
    ),
    Scaffold(
      body: Center(
          child: Text(
        "this is screen 2 from bottom",
        style: TextStyle(fontSize: 32,),
      )),
    ),
  ];
}
