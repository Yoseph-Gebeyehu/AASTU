import 'package:flutter/material.dart';

import '../Widgets/my_course_widgets.dart';

class FifthYear extends StatelessWidget {
  const FifthYear({Key? key}) : super(key: key);
  static const routeName = '/fifth-year';

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text(
          '1st Semester',
          style: Theme.of(context).textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'General Psychology',
            courseCode: 'GePsy001',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'Anthropology',
            courseCode: 'Anth002',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'Global Trend',
            courseCode: 'Glo003',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'English',
            courseCode: 'Eng004',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'Maths',
            courseCode: 'Mat005',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            '2nd Semester',
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'General Psychology',
            courseCode: 'GePsy001',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'Anthropology',
            courseCode: 'Anth002',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'Global Trend',
            courseCode: 'Glo003',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'English',
            courseCode: 'Eng004',
          ),
        ),
        Tab(
          child: MyCourseWidget(
            courseName: 'Maths',
            courseCode: 'Mat005',
          ),
        ),
      ],
    );
  }
}
