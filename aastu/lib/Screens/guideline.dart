import 'package:flutter/material.dart';

class Guidline extends StatelessWidget {
  const Guidline({Key? key}) : super(key: key);
  static const routeName = '/guideline';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('LogIn Guidline'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '''  In order to see your result, first you must log in.The login button islocated at bottom. 

  When the login screen is diplayed, you must enter your user name and password. 

  Refer the following exapmple table on how to use your id number and your Grandfather name as your user name and initial passwordrespectively.''',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Card(
                // color: Colors.transparent,
                child: Text(
                  ''' Here is an example :-
    Full name:- Yoseph Gebeyehu 
    Grandfather Name:-Arega
    Student ID:- ETS1179/11

    Temporary password:-''',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
