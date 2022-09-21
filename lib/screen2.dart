import 'package:flutter/material.dart';
import 'package:multiscreen_app/drawer.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);
  static var routeName = 'screen2route';

  @override
  State<StatefulWidget> createState() {
    return _ScreenTwoState();
  }
}

class _ScreenTwoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: myBody(),
      drawer: const MyDrawer(),
    );
  }

  AppBar myAppBar() => AppBar(
        title: const Text("screen 2"),
      );

   }

