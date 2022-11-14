import 'package:aastu/Widgets/button.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AASTU(),
      debugShowCheckedModeBanner: false,
      routes: {
        Buttonnn.routeName: (context) => Buttonnn('', Icon(Icons.home)),
      },
    );
  }
}

class AASTU extends StatelessWidget {
  AASTU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 15,
            centerTitle: true,
            backgroundColor: Colors.orange.shade200,
            iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 174, 0)),
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(0),
              title: GridTileBar(
                backgroundColor: Colors.orange.shade200,
                title: const Text(
                  'AASTU PORTAL',
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 23, 56),
                      fontFamily: 'QuickSand',
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              background: Image.asset(
                'Assets/Images/AASTU_LOGO.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          buildData(),
        ],
      ),
    );
  }
}

Widget buildData() => SliverToBoxAdapter(
      child: Column(
        children: [
          Buttonnn(
            'Guidline',
            const Icon(
              Icons.login,
              color: Color.fromARGB(255, 2, 23, 56),
            ),
          ),
          Buttonnn(
            'Graduated Students',
            const Icon(
              Icons.people,
             color: Color.fromARGB(255, 2, 23, 56),
            ),
          ),
          Buttonnn(
            'aastu website',
            const Icon(
              Icons.web,
            color: Color.fromARGB(255, 2, 23, 56),
            ),
          ),
        ],
      ),
      // child: ListView(
      //   shrinkWrap: true,
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     ElevatedButton(
      //       style: ButtonStyle(),
      //       onPressed: () {},
      //       child: Text('LogIn Guidline'),
      //     )
      //   ],
      // ),
    );
