import 'package:aastu/Widgets/button.dart';
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

  Refer the following exapmple on how to use your id number and your Grandfather name as your user name and initial passwordrespectively.''',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Card(
                // shadowColor: Color.fromARGB(255, 3, 47, 83),
                // elevation: 10,
                // color: Colors.transparent,
                child: Text(
                  ''' Here is an example :-
          If your              
  Full name:- Yoseph Gebeyehu 
  Student ID:- ets1179/11

          Then your
  User Name:- ets1179/11  
  Password:- gebeyehu1234abcd#

  * Notice that all characters in password must be in lower case!
  
  ''',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                '''   As soon as you log in, the system will ask you to change your temporary password before accesing any resource that needs your identity.
   Therefore,you have to fill the new password and other requested information properly.
   The new password should not be less that 7 characters.
  
 * If you are unable to log in, please ask your concerned registrar office...because your ID number and/or father name may not be encoded correctly.
   Remember what you fill in the biography form.''',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Buttonnn(
                'Login',
                const Icon(Icons.login),
                () => null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
