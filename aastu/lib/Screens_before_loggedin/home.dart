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
            title: Text('Home page'),
            // backgroundColor: const Color.fromARGB(255, 182, 111, 5),
            iconTheme:
                const IconThemeData(color: Color.fromARGB(255, 156, 112, 7)),
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.001,
            // flexibleSpace: FlexibleSpaceBar(
            //   titlePadding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.47),
            //   title: const GridTileBar(
            //     backgroundColor: Colors.transparent,
            //     title: Text(
            //       'AASTU Online Student Information Portal',
            //       maxLines: 3,
            //       // overflow: TextOverflow.ellipsis,
            //       style: TextStyle(
            //         color: Color.fromARGB(255, 2, 23, 56),
            //         fontFamily: 'QuickSand',
            //         fontSize: 17,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            //   background: Image.asset(
            //     'Assets/Images/AASTU_LOGO.png',
            //     fit: BoxFit.cover,
            //   ),
            // ),
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
              () => Navigator.of(context)
                  .pushReplacementNamed(GeneralInfo.routeName),
            ),
            Buttonnn(
              'Guideline to LogIn',
              const Icon(
                Icons.info,
                color: Color.fromARGB(255, 2, 23, 56),
              ),
              () => Navigator.of(context)
                  .pushReplacementNamed(Guidline.routeName),
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
        ),
      ),
    );
