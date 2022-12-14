import 'package:aastu/Screens_before_loggedin/login.dart';
import 'package:aastu/Widgets/my_course_widgets.dart';
import 'package:aastu/courses_by_years.dart/1st_year.dart';
import 'package:aastu/courses_by_years.dart/2nd_year.dart';
import 'package:aastu/courses_by_years.dart/3rd_year.dart';
import 'package:aastu/courses_by_years.dart/4th_year.dart';
import 'package:flutter/material.dart';

class MyCourse extends StatelessWidget {
  static const routeName = '/my-course';
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: ((context, innerBoxIsScrolled) => const [
                SliverAppBar(
                  title: Text('My Courses'),
                  floating: true,
                  snap: true,
                  pinned: true,
                  bottom: TabBar(
                    tabs: [
                      Tab(text: '1st Year'),
                      Tab(text: '2nd Year'),
                      Tab(text: '3rd Year'),
                      Tab(text: '4th Year'),
                      Tab(text: '5th Year'),
                    ],
                    labelStyle: TextStyle(
                      fontFamily: 'QuickSand',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    indicatorColor: Colors.white,
                    isScrollable: true,
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                  ),
                )
              ]),
          body: Column(children: const [
            Expanded(
              child: TabBarView(children: [
                FirstYear(),
                SecondYear(),
                ThirdYear(),
                FourthYear(),
                FirstYear(),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
