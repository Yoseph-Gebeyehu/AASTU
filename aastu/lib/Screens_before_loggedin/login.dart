import 'dart:ffi';

import 'package:aastu/Screens_after_loggedin/list_of_services.dart';
import 'package:aastu/Screens_before_loggedin/alert_dialog.dart';
import 'package:aastu/Screens_before_loggedin/guideline.dart';
import 'package:aastu/Screens_before_loggedin/home.dart';
import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';

class LogIn extends StatefulWidget {
  // const LogIn({Key? key}) : super(key: key);
  static const routeName = '/log-in';

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  bool isPasswordHidden = true;

  void _togglePasswordOverview() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        backgroundColor: Colors.white30,
        child: const SideDrawer(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 15,
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 182, 111, 5),
            iconTheme:
                const IconThemeData(color: Color.fromARGB(255, 167, 118, 5)),
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.47),
              title: const GridTileBar(
                backgroundColor: Colors.transparent,
              ),
              background: Image.asset(
                'Assets/Images/AASTU_LOGO.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          form(
            context,
            userNameController,
            passwordController,
            isPasswordHidden,
            _togglePasswordOverview,
          ),
        ],
      ),
    );
  }
}

Widget form(
  BuildContext context,
  TextEditingController userNameController,
  TextEditingController passwordController,
  bool isPasswordHidden,
  Function togglePassword,
) =>
    SliverToBoxAdapter(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: Theme.of(context).textTheme.headline1,
                cursorColor: Color.fromARGB(255, 3, 40, 100),
                onSaved: (email) {},
                controller: userNameController,
                decoration: InputDecoration(
                  hintText: "User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 5, 50, 122),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: isPasswordHidden,
                // expands: ,
                style: Theme.of(context).textTheme.headline1,
                cursorColor: const Color.fromARGB(255, 5, 50, 122),
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 5, 50, 122),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => togglePassword(),
                    icon: isPasswordHidden
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Hero(
              tag: "login_btn",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  color: Colors.orange,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // shadowColor: Colors.black,

                      primary: Color.fromARGB(255, 173, 105, 3),
                      // side: BorderSide(color: Colors.black,width: 5)
                      // primary: const Color.fromARGB(255, 2, 23, 56),
                      // side: const BorderSide(
                      //     color: Color.fromARGB(255, 4, 91, 163))
                    ),
                    onPressed: () => userNameController.text ==
                                "Yoseph Gebeyehu" &&
                            passwordController.text == "gebeyehu1234abcd#"
                        ? Navigator.of(context)
                            .pushReplacementNamed(ListOfServices.routeName)
                        : showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              content: Text(
                                '''Wrong user name or password.

Plese check the Guideline section!''',
                                style: Theme.of(context).textTheme.headline1,
                                // textAlign: TextAlign.center
                              ),
                              title: const Text(
                                'Error',
                                style: TextStyle(
                                    color: Colors.red, fontFamily: 'QuickSand'),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pushNamed(Guidline.routeName),
                                  child: const Text(
                                    'Guideline',
                                    style:
                                        TextStyle(color: Colors.orange,fontSize: 17,fontFamily: 'QuickSand'),

                                  ),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.of(context).pushNamed(Guidline.routeName),
                                  child: const Text(
                                    'Cancel',
                                    style:
                                        TextStyle(color: Colors.orange,fontSize: 17,fontFamily: 'QuickSand'),

                                  ),
                                ),
                              ],
                            ),
                          ),
                    child: Text(
                      "Login".toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'QuickSand',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
