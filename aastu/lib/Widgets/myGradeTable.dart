import 'package:aastu/model/models.dart';
import 'package:aastu/provider/all_courses.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableScreen extends StatelessWidget {
  // const TableScreen({Key? key}) : super(key: key);
  static const routeName = '/table-screen';

  final List<Models> list1;
  final List<Models> list2;
  // final List<GPA> gpa1;
  // final List<GPA> gpa2;

  TableScreen(this.list1, this.list2);

  TableRow tableRow(BuildContext context, String text1, String text2) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.015,
            bottom: MediaQuery.of(context).size.height * 0.005,
          ),
          child: Text(
            text1,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.015,
            bottom: MediaQuery.of(context).size.height * 0.005,
          ),
          child: Text(
            text2,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  TableRow tabelOfSemester(BuildContext context, String text) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  TableBorder tableBorder() {
    return TableBorder.all(
      color: const Color.fromARGB(255, 6, 76, 134),
      width: 0.2,
    );
  }

  // Widget listViewBuilder(Models listOfModel,List<AllCourses> allCoursesList) {
  //   return ListView.builder(
  //     shrinkWrap: true,
  //     itemBuilder: (context, i) => Table(
  //       border: tableBorder(),
  //       children: [
  //         tableRow(context, listOfModel.courseName, listOfModel.grade),
  //         // tableRow(context, list2[i].courseName, list2[i].grade),
  //       ],
  //     ),
  //     itemCount: allCoursesList.length,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final pic = Provider.of<AllCourses>(context, listen: false);
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
        top: MediaQuery.of(context).size.height * 0.001,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Table(
              border: tableBorder(),
              children: [
                tabelOfSemester(context, '1st Semester'),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, i) => Table(
                border: tableBorder(),
                children: [
                  tableRow(context, list1[i].courseName, list1[i].grade),
                  // tableRow(context, list2[i].courseName, list2[i].grade),
                ],
              ),
              itemCount: list1.length,
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, i) => Table(
            //     border: tableBorder(),
            //     children: [
            //       tableRow(context, gpa1[i].sgpa, gpa1[i].result),
            //       // tableRow(context, list2[i].courseName, list2[i].grade),
            //     ],
            //   ),
            //   itemCount: gpa1.length,
            // ),
            const SizedBox(height: 50),
            Table(
              border: tableBorder(),
              children: [
                tabelOfSemester(context, '2nd Semester'),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, i) => Table(
                border: tableBorder(),
                children: [
                  // tableRow(context, list1[i].courseName, list1[i].grade),
                  tableRow(context, list2[i].courseName, list2[i].grade),
                ],
              ),
              itemCount: list2.length,
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, i) => Table(
            //     border: tableBorder(),
            //     children: [
            //       // tableRow(context, list1[i].courseName, list1[i].grade),
            //       tableRow(context, gpa2[i].sgpa, gpa2[i].result),
            //     ],
            //   ),
            //   itemCount: gpa2.length,
            // ),
          ],
        ),
      ),
      // child: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Table(
      //       border: tableBorder(),
      //       children: [
      //         tabelOfSemester(context, '1st Semester'),
      //       ],
      //     ),
      //     Table(
      //       border: tableBorder(),
      //       children: [
      //         tableRow(context, 'SGPA', '3.5'),
      //         tableRow(context, 'CGPA', '3.3'),
      //       ],
      //     ),
      //     const SizedBox(
      //       height: 35,
      //     ),
      //     Table(
      //       border: tableBorder(),
      //       children: [
      //         tabelOfSemester(context, '2nd Semester'),
      //       ],
      //     ),
      //     Table(
      //       border: tableBorder(),
      //       children: [
      //         tableRow(context, 'SGPA', '3.5'),
      //         tableRow(context, 'CGPA', '3.3'),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
