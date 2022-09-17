import 'package:flutter/material.dart';
import 'package:multiscreen_app/screen1.dart';
import 'package:multiscreen_app/screen2.dart';
import 'main.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  selectScreen(ctx, n) {
    Navigator.of(ctx).pushReplacementNamed(
      n == 1
          ? ScreenOne.routeName
          : n == 2
              ? ScreenTwo.routeName
              : MyApp.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    var drawerList = [
      ListTile(
        title: const Text("main screen"),
        onTap: () => {selectScreen(context, 0)},
      ),
      ListTile(
        title: const Text("screen 1"),
        onTap: () => {selectScreen(context, 1)},
      ),
      ListTile(
        title: const Text("screen 2"),
        onTap: () => {selectScreen(context, 2)},
      ),
    ];
    return Drawer(
      child: ListView(
        children: drawerList,
      ),
    );
  }
}
