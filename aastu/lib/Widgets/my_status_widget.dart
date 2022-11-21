import 'dart:async';

import 'package:flutter/material.dart';

class MyStatusWidget extends StatelessWidget {
  // const MyStatusWidget({Key? key}) : super(key: key);

  final String accadamic_year;
  final String year_batch;
  final String semester;
  final String registraion_date;
  final String remark;
  final String registration_type;
  final String semester_gpa;
  final String cummulative_gpa;
  final String previous_status;
  final String final_status;

  const MyStatusWidget(
      {super.key,
      required this.accadamic_year,
      required this.year_batch,
      required this.semester,
      required this.registraion_date,
      required this.remark,
      required this.registration_type,
      required this.semester_gpa,
      required this.cummulative_gpa,
      required this.previous_status,
      required this.final_status});

// /MyStatusWidget
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '1st Semster',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Acadamic year:- $accadamic_year',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Year/Batch:- $year_batch',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Semester:- $semester',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Registration Date:- $registraion_date',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Remark:- $remark',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Registraion type:- $registration_type',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Semster GPA:- $semester_gpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Commulative GPA:- $cummulative_gpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Prvious Status:- $previous_status',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Final Status:- $final_status',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              '2nd Semster',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'Acadamic year:- $accadamic_year',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Year/Batch:- $year_batch',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Semester:- $semester',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Registration Date:- $registraion_date',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Remark:- $remark',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Registraion type:- $registration_type',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Semster GPA:- $semester_gpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Commulative GPA:- $cummulative_gpa',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Prvious Status:- $previous_status',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Final Status:- $final_status',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
