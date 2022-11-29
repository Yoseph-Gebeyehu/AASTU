import 'package:aastu/Widgets/myGradeTable.dart';
import 'package:aastu/Screens_after_loggedin/list_of_services.dart';
import 'package:aastu/Screens_after_loggedin/my_course.dart';
import 'package:aastu/Screens_after_loggedin/my_dormitory.dart';
import 'package:aastu/Screens_after_loggedin/my_status.dart';
import 'package:aastu/Screens_before_loggedin/guideline.dart';
import 'package:aastu/Screens_before_loggedin/home.dart';
import 'package:aastu/Screens_before_loggedin/welcome.dart';
import 'package:aastu/Widgets/button.dart';
import 'package:aastu/Widgets/drawer.dart';
import 'package:aastu/Screens_before_loggedin/general_inforamtion.dart';
import 'package:aastu/Screens_before_loggedin/login.dart';
import 'package:aastu/courses_by_years.dart/1st_year.dart';
import 'package:aastu/courses_by_years.dart/2nd_year.dart';
import 'package:aastu/courses_by_years.dart/3rd_year.dart';
import 'package:aastu/courses_by_years.dart/4th_year.dart';
import 'package:aastu/courses_by_years.dart/5th_year.dart';
import 'package:flutter/material.dart';

import 'Screens_after_loggedin/my_grade.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Welcome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 3, 47, 83),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'QuickSand',
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.orange,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color.fromARGB(255, 2, 23, 56),
            fontSize: 20,
            fontFamily: 'QuickSand',
            fontWeight: FontWeight.w400,
          ),
          headline2: TextStyle(
            color: Color.fromARGB(255, 2, 23, 56),
            fontSize: 23,
            fontFamily: 'QuickSand',
            fontWeight: FontWeight.w500,
          ),
          headline3: TextStyle(
            color: Color.fromARGB(255, 2, 23, 56),
            fontSize: 25,
            fontFamily: 'QuickSand',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routes: {
        Buttonnn.routeName: (context) =>
            Buttonnn('', const Icon(Icons.home), () => null),
        SideDrawer.routeName: (context) => const SideDrawer(),
        GeneralInfo.routeName: (context) => const GeneralInfo(),
        Home.routeName: (context) => Home(),
        Guidline.routeName: (context) => const Guidline(),
        LogIn.routeName: (context) => LogIn(),
        ListOfServices.routeName: (context) => const ListOfServices(),
        MyCourse.routeName: (context) => MyCourse(),
        FirstYear.routeName: (context) => const FirstYear(),
        SecondYear.routeName: (context) => const SecondYear(),
        ThirdYear.routeName: (context) => const ThirdYear(),
        FourthYear.routeName: (context) => const FourthYear(),
        FifthYear.routeName: (context) => const FifthYear(),
        MyStatus.routeName: (context) => MyStatus(),
        MyGrade.routeName: (context) => MyGrade(),
        MyDormitory.routeName: (context) => const MyDormitory(),
        TableScreen.routeName: (context) => const TableScreen(),
      },
    );
  }
}
