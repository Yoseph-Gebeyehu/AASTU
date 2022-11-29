// import 'package:aastu/Screens_before_loggedin/home.dart';
// import 'package:aastu/Widgets/drawer.dart';
import 'package:flutter/material.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({Key? key}) : super(key: key);

  static const routeName = '/general-info';

  ListTile listTile(BuildContext context, String text) {
    return ListTile(
      iconColor: Theme.of(context).iconTheme.color,
      leading: const Icon(Icons.star),
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'General Information',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'QuickSand'),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 47, 83),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Dear Addis Ababa Science and Technology University Students:-',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              Text(
                'This app is launched for students to access the following information:',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              listTile(context, 'All courses in his/her Curriculum'),
              listTile(context,
                  'Academic Status:- detail academic status starting from year 1, semester 1....,'),
              listTile(context,
                  'Detail about taken courses, exempted courses, waived courses,...'),
              listTile(context, 'Other important information'),
            ],
          ),
        ),
      ),
    );
  }
}
