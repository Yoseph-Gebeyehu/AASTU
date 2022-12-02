import 'package:aastu/model/models.dart';
import 'package:flutter/material.dart';

// class GPA {
//   final String sgpa;

//   final String result;

//   GPA(this.sgpa, this.result);
// }

class AllCourses with ChangeNotifier {
  final List<Models> _firstYr1stSemester = [
    Models('Genera Psychology', 'A'),
    Models('Anthropology', 'A+'),
    Models('Global Trend', 'B+'),
    Models('English', 'B'),
    Models('Maths', 'A-'),
    Models('SGPA', '3.3'),
    Models('CGPA', '3.3'),
  ];

  final List<Models> _firstYr2ndSemester = [
    Models('Inclusiveness', 'A'),
    Models('Economics', 'A+'),
    Models('Applied Math', 'B+'),
    Models('Communicative', 'B'),
    Models('Sport', 'A-'),
    Models('SGPA', '3.7'),
    Models('CGPA', '3.4'),
  ];

  final List<Models> _secondYr1stSemester = [
    Models('Electronics 1', 'A'),
    Models('Thermodynamics', 'A-'),
    Models('Modern Physics', 'B'),
    Models('Applied 2', 'A+'),
    Models('Electronics lab', 'B'),
    Models('SGPA', '3.6'),
    Models('CGPA', '3.5'),
  ];

  List<Models> get firstYr1stSemester {
    return [..._firstYr1stSemester];
  }

  List<Models> get firstYr2ndSemester {
    return [..._firstYr2ndSemester];
  }

  List<Models> get secondYr1stSemester {
    return [..._secondYr1stSemester];
  }
}
