import 'package:flutter/material.dart';

class MyStatusWidget extends StatelessWidget {

  final String accadamicYear;
  final String yearBatch;
  final String semester;
  final String registraionDate;
  final String remark;
  final String registrationType;
  final String semesterGpa;
  final String cummulativeGgpa;
  final String previousStatus;
  final String finalStatus;

  const MyStatusWidget({
    super.key,
    required this.accadamicYear,
    required this.yearBatch,
    required this.semester,
    required this.registraionDate,
    required this.remark,
    required this.registrationType,
    required this.semesterGpa,
    required this.cummulativeGgpa,
    required this.previousStatus,
    required this.finalStatus,
  });

  TableRow tableRow(BuildContext context, String text1, text2) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Text(
            text1,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.01,
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

  Widget tableOfSemester(BuildContext context, String text) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromARGB(255, 6, 76, 134),
        width: 0.2,
      ),
      children: [
        TableRow(
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
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          tableOfSemester(context, '1st Semester'),
          Table(
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
            ),
            children: [
              tableRow(context, 'Acadamic year', accadamicYear),
              tableRow(context, 'Year/Batch', yearBatch),
              tableRow(context, 'Semester', semester),
              tableRow(context, 'Reg. Date', registraionDate),
              tableRow(context, 'Remark', remark),
              tableRow(context, 'Reg. type', registrationType),
              tableRow(context, 'SGPA', semesterGpa),
              tableRow(context, 'CGPA', cummulativeGgpa),
              tableRow(context, 'Prvious Status', previousStatus),
              tableRow(context, 'Final Status', finalStatus),
            ],
          ),
          const SizedBox(height: 50),
          tableOfSemester(context, '2nd Semester'),
          Table(
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
            ),
            children: [
              tableRow(context, 'Acadamic year', accadamicYear),
              tableRow(context, 'Year/Batch', yearBatch),
              tableRow(context, 'Semester', semester),
              tableRow(context, 'Reg. Date', registraionDate),
              tableRow(context, 'Remark', remark),
              tableRow(context, 'Reg. type', registrationType),
              tableRow(context, 'SGPA', semesterGpa),
              tableRow(context, 'CGPA', cummulativeGgpa),
              tableRow(context, 'Prvious Status', previousStatus),
              tableRow(context, 'Final Status', finalStatus),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
