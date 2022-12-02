import 'package:aastu/Widgets/myGradeTable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/all_courses.dart';

class MyGrade extends StatelessWidget {
  static const routeName = '/my-grade';
  Widget build(BuildContext context) {
    final pic = Provider.of<AllCourses>(context, listen: false);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: ((context, innerBoxIsScrolled) => const [
                SliverAppBar(
                  title: Text('My Grade'),
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
          body: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    Tab(
                      child: TableScreen(
                        pic.firstYr1stSemester,
                        pic.firstYr2ndSemester,
                        // pic.gpa1stYr1stSemster,
                        // pic.gpa1stYr2ndSemster,
                      ),
                    ),
                    Tab(
                      child: TableScreen(
                        pic.secondYr1stSemester,
                        pic.secondYr1stSemester,
                        // pic.gpa1stYr1stSemster,
                        // pic.gpa1stYr2ndSemster,
                      ),
                    ),
                    Tab(
                      child: TableScreen(
                        pic.secondYr1stSemester,
                        pic.secondYr1stSemester,
                        // pic.gpa1stYr1stSemster,
                        // pic.gpa1stYr2ndSemster,
                      ),
                    ),
                    Tab(
                      child: TableScreen(
                        pic.secondYr1stSemester,
                        pic.secondYr1stSemester,
                        // pic.gpa1stYr1stSemster,
                        // pic.gpa1stYr2ndSemster,
                      ),
                    ),
                    Tab(
                      child: TableScreen(
                        pic.secondYr1stSemester,
                        pic.secondYr1stSemester,
                        // pic.gpa1stYr1stSemster,
                        // pic.gpa1stYr2ndSemster,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
