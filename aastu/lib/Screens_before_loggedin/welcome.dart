import 'package:aastu/Screens_before_loggedin/home.dart';
import 'package:aastu/Widgets/button.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          elevation: 15,
          centerTitle: false,
          // backgroundColor: const Color.fromARGB(255, 182, 111, 5),
          iconTheme:
              const IconThemeData(color: Color.fromARGB(255, 167, 118, 5)),
          floating: true,
          pinned: true,
          snap: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.8,

          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: MediaQuery.of(context).size.width * 0.05),
            title: const Text(
              '''Welcome to AASTU Online 
Student Information Portal''',
              style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 12,
                color: Color.fromARGB(255, 2, 23, 56),
              ),
            ),
            background: Image.asset(
              'Assets/Images/AASTU_LOGO.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        button(context),
      ]),
    );
  }
}

Widget button(BuildContext context) => SliverToBoxAdapter(
      child: Buttonnn(
        'Start here',
        const Icon(Icons.start),
        () => Navigator.of(context).pushReplacementNamed(Home.routeName),
      ),
    );
