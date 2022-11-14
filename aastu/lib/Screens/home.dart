import 'package:aastu/Widgets/general_inforamtion.dart';
import 'package:flutter/material.dart';

import '../Widgets/button.dart';
import '../Widgets/drawer.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  static const routeName = '/home';

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
            snap: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.52,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.47),
              title: const GridTileBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  'AASTU Online Student Information Portal',
                  maxLines: 3,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 23, 56),
                    fontFamily: 'QuickSand',
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              background: Image.asset(
                'Assets/Images/AASTU_LOGO.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          buildData(context),
        ],
      ),
    );
  }
}

Widget buildData(BuildContext context) => SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Buttonnn(
            'General Information',
            const Icon(
              Icons.info,
              color: Color.fromARGB(255, 2, 23, 56),
            ),
            () => Navigator.of(context).pushNamed(GeneralInfo.routeName),
          ),
          Buttonnn(
            'Guidline',
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
    );
