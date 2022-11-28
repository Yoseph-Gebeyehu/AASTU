import 'dart:async';

import 'package:flutter/material.dart';

class MyStatusWidget extends StatelessWidget {
  // const MyStatusWidget({Key? key}) : super(key: key);

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

// /MyStatusWidget
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              '1st Semster',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          Text(
            'Acadamic year:- $accadamicYear',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Year/Batch:- $yearBatch',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Semester:- $semester',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Registration Date:- $registraionDate',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Remark:- $remark',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Registraion type:- $registrationType',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Semster GPA:- $semesterGpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Commulative GPA:- $cummulativeGgpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Prvious Status:- $previousStatus',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Final Status:- $finalStatus',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          const SizedBox(height: 20),
          Center(
            child: Text(
              '2nd Semster',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          Text(
            'Acadamic year:- $accadamicYear',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Year/Batch:- $yearBatch',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Semester:- $semester',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Registration Date:- $registraionDate',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Remark:- $remark',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Registraion type:- $registrationType',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Semster GPA:- $semesterGpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Commulative GPA:- $cummulativeGgpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Prvious Status:- $previousStatus',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          Text(
            'Final Status:- $finalStatus',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
