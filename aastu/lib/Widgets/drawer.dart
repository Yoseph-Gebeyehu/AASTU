import 'package:aastu/Screens/guideline.dart';
import 'package:aastu/Screens/home.dart';
import 'package:aastu/Widgets/button.dart';
import 'package:aastu/Screens/general_inforamtion.dart';
import 'package:aastu/Widgets/login.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);
  static const routeName = 'side-drawer';
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Buttonnn(
          'Home',
          const Icon(
            Icons.home,
            color: Color.fromARGB(255, 2, 23, 56),
          ),
          () => Navigator.of(context).pushReplacementNamed(Home.routeName),
        ),
        Buttonnn(
          'General Information',
          const Icon(
            Icons.info,
            color: Color.fromARGB(255, 2, 23, 56),
          ),
          () => Navigator.of(context).pushReplacementNamed(GeneralInfo.routeName),
        ),
        Buttonnn(
          'Guideline',
          const Icon(
            Icons.info,
            color: Color.fromARGB(255, 2, 23, 56),
          ),
          () => Navigator.of(context).pushReplacementNamed(Guidline.routeName),
        ),
        Buttonnn(
          'LogIn',
          const Icon(
            Icons.login,
            color: Color.fromARGB(255, 2, 23, 56),
          ),
          () => Navigator.of(context).pushReplacementNamed(LogIn.routeName),
        ),
        Buttonnn(
          'SignUp',
          const Icon(
            Icons.login,
            color: Color.fromARGB(255, 2, 23, 56),
          ),
          () => null,
        ),
        Buttonnn(
          'Graduated Students',
          const Icon(
            Icons.people,
            color: Color.fromARGB(255, 2, 23, 56),
          ),
          () => null,
        ),
        Buttonnn(
          'aastu website',
          const Icon(
            Icons.web,
            color: Color.fromARGB(255, 2, 23, 56),
          ),
          () => null,
        ),
      ],
    );
  }
}
