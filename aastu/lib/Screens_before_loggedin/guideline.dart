import 'package:aastu/Widgets/button.dart';
import 'package:aastu/Screens_before_loggedin/login.dart';
import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';

class Guidline extends StatelessWidget {
  const Guidline({Key? key}) : super(key: key);
  static const routeName = '/guideline';

  Padding padding(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogIn Guidline'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            padding(context,
                '''  In order to see your result, first you must log in.The login button islocated at bottom. 

  When the login screen is diplayed, you must enter your user name and password. 

  Refer the following exapmple on how to use your id number and your Grandfather name as your user name and initial passwordrespectively.'''),
            padding(context, ''' Here is an example :-
          If your              
  Full name:- Yoseph Gebeyehu 
  Student ID:- ets1179/11

          Then your
  User Name:- ets1179/11  
  Password:- gebeyehu1234abcd#

  * Notice that all characters in password must be in lower case!
  
  '''),
            padding(context,
                '''   As soon as you log in, the system will ask you to change your temporary password before accesing any resource that needs your identity.
   Therefore,you have to fill the new password and other requested information properly.
   The new password should not be less that 7 characters.
  
 * If you are unable to log in, please ask your concerned registrar office...because your ID number and/or father name may not be encoded correctly.
   Remember what you fill in the biography form.'''),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Buttonnn(
                'Login',
                const Icon(Icons.login),
                () =>
                    Navigator.of(context).pushReplacementNamed(LogIn.routeName),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
