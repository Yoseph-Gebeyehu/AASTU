import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);
  static const routeName = '/table-screen';

  Widget padding(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.015,
        bottom: MediaQuery.of(context).size.height * 0.005,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline1,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget paddingOfSemester(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline2,
        textAlign: TextAlign.center,
      ),
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
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
            ),
            children: [
              TableRow(
                children: [
                  padding(context, '1st Semester'),
                ],
              ),
            ],
          ),
          Table(
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
            ),
            children: [
              TableRow(
                children: [
                  padding(context, 'SGPA'),
                  padding(context, '3.5'),
                ],
              ),
              TableRow(
                children: [
                  padding(context, 'CPGA'),
                  padding(context, '3.5'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Table(
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
            ),
            children: [
              TableRow(children: [
                padding(context, '2nd Semester'),
              ]),
            ],
          ),
          Table(
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
            ),
            children: [
              TableRow(
                children: [
                  padding(context, 'SPGA'),
                  padding(context, '3.6'),
                ],
              ),
              TableRow(
                children: [
                  padding(context, 'CGPA'),
                  padding(context, '3.3'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
