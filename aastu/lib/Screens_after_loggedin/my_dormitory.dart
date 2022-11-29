import 'package:flutter/material.dart';

class MyDormitory extends StatelessWidget {
  const MyDormitory({Key? key}) : super(key: key);
  static const routeName = '/my-dormitory';

  ListTile listTile(BuildContext context, String text) {
    return ListTile(
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline1,
      ),
      leading: const Icon(
        Icons.star,
        color: Color.fromARGB(255, 3, 47, 83),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Dormitory'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            listTile(context, '''Campus        :- 1'''),
            listTile(context, '''Building No.  :- 010'''),
            listTile(context, '''Building Name :- 010'''),
            listTile(context, 'Floor No.     :- G+4'),
            listTile(context, 'Dorm          :- 411'),
            listTile(context, 'Bed No.       :- B01'),
          ],
        ),
      ),
    );
  }
}
