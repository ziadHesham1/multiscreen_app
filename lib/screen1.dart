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
      body: myBody(),
      drawer: const MyDrawer(),
    );
  }

  AppBar myAppBar() => AppBar(
        title: const Text("screen 1"),
      );
  Widget myBody() => TextButton(
        onPressed: () => {},
        child: const Center(child: Text("go to screen 2")),
      );

 
}
