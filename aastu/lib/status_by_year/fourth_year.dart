import 'package:aastu/Widgets/my_status_widget.dart';
import 'package:flutter/material.dart';

class FourthYearStatus extends StatelessWidget {
  const FourthYearStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyStatusWidget(
      accadamic_year: '2000',
      year_batch: '2',
      semester: '1',
      registraion_date: 'June 2002',
      remark: 'Nothing',
      registration_type: 'Normal Load',
      semester_gpa: '3.4',
      cummulative_gpa: '3.3',
      previous_status: 'pass',
      final_status: 'pass',
    );
  }
}
