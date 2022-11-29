import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);
  static const routeName = '/table-screen';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
        top: MediaQuery.of(context).size.height * 0.001,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Table(
            border: tableBorder(),
            children: [
              tabelOfSemester(context, '1st Semester'),
            ],
          ),
          Table(
            border: tableBorder(),
            children: [
              tableRow(context, 'SGPA', '3.5'),
              tableRow(context, 'CGPA', '3.3'),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Table(
            border: tableBorder(),
            children: [
              tabelOfSemester(context, '2nd Semester'),
            ],
          ),
          Table(
            border: tableBorder(),
            children: [
              tableRow(context, 'SGPA', '3.5'),
              tableRow(context, 'CGPA', '3.3'),
            ],
          ),
        ],
      ),
    );
  }
}
