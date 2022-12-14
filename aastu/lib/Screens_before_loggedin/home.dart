import 'package:aastu/Screens_before_loggedin/general_inforamtion.dart';
import 'package:aastu/Screens_before_loggedin/guideline.dart';
import 'package:flutter/material.dart';

import '../Widgets/button.dart';
// import '../Widgets/drawer.dart';
import 'login.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 15,
            shadowColor: Colors.black,
            centerTitle: true,
            leading: Image.asset('Assets/Images/AASTU_LOGO.png'),
            actions: [
              Image.asset('Assets/Images/AASTU_LOGO.png'),
            ],
            title: const Text('Home page'),
            // backgroundColor: const Color.fromARGB(255, 182, 111, 5),
            iconTheme:
                const IconThemeData(color: Color.fromARGB(255, 156, 112, 7)),
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.001,
          ),
          buildData(context),
        ],
      ),
    );
  }
}

Widget buildData(BuildContext context) => SliverToBoxAdapter(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Buttonnn(
              'General Information',
              const Icon(
                Icons.info,
                color: Color.fromARGB(255, 2, 23, 56),
              ),
              () => Navigator.of(context).pushNamed(GeneralInfo.routeName),
            ),
            Buttonnn(
              'Guideline to LogIn',
              const Icon(
                Icons.info,
                color: Color.fromARGB(255, 2, 23, 56),
              ),
              () => Navigator.of(context).pushNamed(Guidline.routeName),
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
              'aastu website',
              const Icon(
                Icons.web,
                color: Color.fromARGB(255, 2, 23, 56),
              ),
              () => null,
            ),
          ],
        ),
      ),
    );
