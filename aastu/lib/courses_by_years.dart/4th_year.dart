import 'package:flutter/material.dart';

import '../Widgets/my_course_widgets.dart';

class FourthYear extends StatelessWidget {
  const FourthYear({Key? key}) : super(key: key);
  static const routeName = '/fourth-year';
  Tab tab(String name, String code) {
    return Tab(
      child: MyCourseWidget(courseName: name, courseCode: code),
    );
  }

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
        tab('General Psychology', 'GePsy001'),
        tab('Anthropology', 'Anth002'),
        tab('Global Trend', 'Glo003'),
        tab('English', 'Eng004'),
        tab('Maths', 'Mat005'),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            '2nd Semester',
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
        ),
        tab('General Psychology', 'GePsy001'),
        tab('Anthropology', 'Anth002'),
        tab('Global Trend', 'Glo003'),
        tab('English', 'Eng004'),
        tab('Maths', 'Mat005'),
        const SizedBox(height: 40),
      ],
    );
  }
}
