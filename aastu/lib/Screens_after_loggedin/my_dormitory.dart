import 'package:flutter/material.dart';

class MyDormitory extends StatelessWidget {
  const MyDormitory({Key? key}) : super(key: key);
  static const routeName = '/my-dormitory';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('My Dormitory'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // scrollDirection: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                'Campus :-1',
                style: Theme.of(context).textTheme.headline1,
              ),
              leading: const Icon(
                Icons.star,
                color: Color.fromARGB(255, 3, 47, 83),
              ),
            ),
            ListTile(
              title: Text(
                'Building No.  :- 010',
                style: Theme.of(context).textTheme.headline1,
              ),
              leading: const Icon(
                Icons.star,
                color: Color.fromARGB(255, 3, 47, 83),
              ),
            ),
            ListTile(
              title: Text(
                'Building Name   :- 010',
                style: Theme.of(context).textTheme.headline1,
              ),
              leading: const Icon(
                Icons.star,
                color: Color.fromARGB(255, 3, 47, 83),
              ),
            ),
            ListTile(
              title: Text(
                'Floor No.   :- G+4',
                style: Theme.of(context).textTheme.headline1,
              ),
              leading: const Icon(
                Icons.star,
                color: Color.fromARGB(255, 3, 47, 83),
              ),
            ),
            ListTile(
              title: Text(
                'Dorm   :- 411',
                style: Theme.of(context).textTheme.headline1,
              ),
              leading: const Icon(
                Icons.star,
                color: Color.fromARGB(255, 3, 47, 83),
              ),
            ),
            ListTile(
              title: Text(
                'Bed No.   :- B01',
                style: Theme.of(context).textTheme.headline1,
              ),
              leading: const Icon(
                Icons.star,
                color: Color.fromARGB(255, 3, 47, 83),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
