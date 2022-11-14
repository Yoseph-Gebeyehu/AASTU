import 'package:aastu/Screens/home.dart';
import 'package:aastu/Widgets/button.dart';
import 'package:aastu/Widgets/drawer.dart';
import 'package:aastu/Widgets/general_inforamtion.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.orange,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              color: Color.fromARGB(255, 2, 23, 56),
              fontSize: 20,
              fontFamily: 'QuickSand',
              fontWeight: FontWeight.w400),
        ),
      ),
      routes: {
        Buttonnn.routeName: (context) =>
            Buttonnn('', Icon(Icons.home), () => null),
        SideDrawer.routeName: (context) => SideDrawer(),
        GeneralInfo.routeName: (context) => GeneralInfo(),
        Home.routeName: (context) => Home(),
      },
    );
  }
}
