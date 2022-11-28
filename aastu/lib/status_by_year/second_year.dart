import 'package:aastu/Widgets/my_status_widget.dart';
import 'package:flutter/material.dart';

class SecondYearStatus extends StatelessWidget {
  const SecondYearStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyStatusWidget(
      accadamicYear: '2000',
      yearBatch: '2',
      semester: '1',
      registraionDate: 'June 2002',
      remark: 'Nothing',
      registrationType: 'Normal Load',
      semesterGpa: '3.4',
      cummulativeGgpa: '3.3',
      previousStatus: 'pass',
      finalStatus: 'pass',
    );
  }
}
