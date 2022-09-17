import 'package:flutter/material.dart';
import 'package:multiscreen_app/drawer.dart';
import 'package:multiscreen_app/screen1.dart';
import 'package:multiscreen_app/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static var routeName = '/';
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // routeName:(context) => MyApp(),
        ScreenOne.routeName:(context) => const ScreenOne(),
        ScreenTwo.routeName:(context) => const ScreenTwo(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text("main scrren"),
        ),
        body: const Center(child: Text('this is the main screen')),
        drawer: const MyDrawer(),
      ),
    );
  }
}
