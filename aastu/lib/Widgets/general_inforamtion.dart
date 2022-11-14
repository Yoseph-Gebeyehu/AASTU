import 'package:aastu/Screens/home.dart';
import 'package:aastu/Widgets/drawer.dart';
import 'package:flutter/material.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({Key? key}) : super(key: key);

  static const routeName = '/general-info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        backgroundColor: Colors.white30,
        child: const SideDrawer(),
      ),
      appBar: AppBar(
        title: const Text(
          'General Information',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 47, 83),
        leading: IconButton(
          onPressed: (() => Navigator.of(context).pop()),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        // iconTheme: IconThemeData(color: const Color.fromARGB(255, 182, 111, 5)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // padding: EdgeInsets.only(top:40),
          children: [
            ListTile(
              iconColor: Theme.of(context).iconTheme.color,
              leading: const Icon(Icons.star),
              title: Text(
                'All courses in his/her Curriculum',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            ListTile(
              iconColor: Theme.of(context).iconTheme.color,
              leading: const Icon(Icons.star),
              title: Text(
                'Academic Status:- detail academic status starting from year 1, semester 1....,',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            ListTile(
              iconColor: Theme.of(context).iconTheme.color,
              leading: const Icon(Icons.star),
              title: Text(
                'Detail about taken courses, exempted courses, waived courses,...',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            ListTile(
              iconColor: Theme.of(context).iconTheme.color,
              leading: const Icon(Icons.star),
              title: Text(
                'Other important information',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
