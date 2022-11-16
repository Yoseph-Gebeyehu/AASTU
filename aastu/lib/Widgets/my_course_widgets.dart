import 'package:flutter/material.dart';

class MyCourseWidget extends StatelessWidget {
  // const MyCourseWidget({Key? key}) : super(key: key);

  var courseCode;
  final String courseName;
  MyCourseWidget({required this.courseName, @required this.courseCode});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      subtitle: Text(
        'Subject Code:- ' + courseCode,
        style: const TextStyle(fontFamily: 'QuickSand', fontSize: 15),
      ),
      horizontalTitleGap: 0,
      // contentPadding: EdgeInsets.all(0),
      leading: const Icon(
        Icons.star,
        color: Color.fromARGB(255, 3, 47, 83),
      ),
      title: Text(
        courseName,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
