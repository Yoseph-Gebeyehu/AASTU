import 'package:flutter/material.dart';

class MyGrade extends StatelessWidget {
  static const routeName = '/my-grade';
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: ((context, innerBoxIsScrolled) => const [
                SliverAppBar(
                  title: Text('My Grade'),
                  floating: true,
                  snap: true,
                  pinned: true,
                  bottom: TabBar(
                    tabs: [
                      Tab(text: '1st Year'),
                      Tab(text: '2nd Year'),
                      Tab(text: '3rd Year'),
                      Tab(text: '4th Year'),
                      Tab(text: '5th Year'),
                    ],
                    labelStyle: TextStyle(
                      fontFamily: 'QuickSand',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    indicatorColor: Colors.white,
                    isScrollable: true,
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                  ),
                )
              ]),
          body: Column(children: [
            Expanded(
              child: TabBarView(children: [
                Tab(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                    children: [
                      Text(
                        '1st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '2st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.54',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.65',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                    children: [
                      Text(
                        '1st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '2st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.54',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.65',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                    children: [
                      Text(
                        '1st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '2st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.54',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.65',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                    children: [
                      Text(
                        '1st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '2st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.54',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.65',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                    children: [
                      Text(
                        '1st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.85',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        '2st Semester',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Semster GPA :- 3.54',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Cummulative GPA :- 3.65',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
