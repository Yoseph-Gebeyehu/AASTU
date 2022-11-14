import 'package:aastu/Screens/home.dart';
import 'package:aastu/Widgets/button.dart';
import 'package:aastu/Widgets/drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: {
        Buttonnn.routeName: (context) => Buttonnn('', Icon(Icons.home)),
        SideDrawer.routeName: (context) => SideDrawer(),
        // Home.routeName : (context)=> Home(),
      },
    );
  }
}

