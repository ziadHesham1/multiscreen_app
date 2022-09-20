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
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          // routeName:(context) => MyApp(),
          ScreenOne.routeName: (context) => const ScreenOne(),
          ScreenTwo.routeName: (context) => const ScreenTwo(),
        },
        home: myScaffold(),
      ),
    );
  }

  Scaffold myScaffold() => Scaffold(
        appBar: AppBar(
          title: const Text("main scrren"),
          bottom: myTabBar(),
        ),
        body: myTabBarView(),
        // body:const Text("some text to show"),
        drawer: const MyDrawer(),
      );

  TabBar myTabBar() {
    const tabs = [
          Tab(icon: Icon(Icons.category), text: ("screen 1")),
          Tab(icon: Icon(Icons.star), text: ("screen 2")),
        ];
    return const TabBar(
        tabs: tabs,
      );
  }
  TabBarView myTabBarView() => const TabBarView(
        children: [
          Center(
              child: Text(
            "this is screen 1",
            style: TextStyle(fontSize: 32),
          )),
          Center(
              child: Text(
            "this is screen 2 ",
            style: TextStyle(fontSize: 32),
          )),
        ],
      );
}
