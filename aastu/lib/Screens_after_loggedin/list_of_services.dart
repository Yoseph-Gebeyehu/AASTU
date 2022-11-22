import 'package:aastu/Screens_after_loggedin/my_course.dart';
import 'package:aastu/Screens_after_loggedin/my_dormitory.dart';
// import 'package:aastu/Screens_after_loggedin/my_gread.dart';
import 'package:aastu/Screens_after_loggedin/my_status.dart';
import 'package:aastu/Screens_before_loggedin/login.dart';
import 'package:aastu/Widgets/button.dart';
import 'package:flutter/material.dart';

import 'my_grade.dart';

class ListOfServices extends StatelessWidget {
  const ListOfServices({Key? key}) : super(key: key);

  static const routeName = '/list-of-services';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Yoseph Gebeyehu',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          TextButton(
            // style: ButtonStyle(),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(LogIn.routeName),
            child: const Text(
              'Log out',
              style: TextStyle(
                color: Colors.orange,
                fontFamily: 'QuickSand',
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Buttonnn(
              'My Course',
              const Icon(Icons.person),
              () => Navigator.of(context).pushNamed(MyCourse.routeName),
            ),
            Buttonnn(
              'My Status',
              const Icon(Icons.person),
              () => Navigator.of(context).pushNamed(MyStatus.routeName),
            ),
            Buttonnn(
              'My Grade',
              const Icon(Icons.grade_outlined),
              () => Navigator.of(context).pushNamed(MyGrade.routeName),
              // null,
            ),
            Buttonnn(
              'My Dormitory',
              const Icon(Icons.home),
              () => Navigator.of(context).pushNamed(MyDormitory.routeName),
            ),
            Buttonnn(
              'aastu website',
              const Icon(Icons.web),
              null,
            ),
          ],
        ),
      ),
    );
  }
}
