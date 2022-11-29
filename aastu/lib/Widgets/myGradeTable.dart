import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);
  static const routeName = '/table-screen';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
        top: MediaQuery.of(context).size.height * 0.001,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Table(
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,

              // borderRadius: BorderRadius.circular(15),
            ),
            children: [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Text(
                    '1st Semester',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
          // Text(
          //   '1st Semester',
          //   style: Theme.of(context).textTheme.headline1,
          //   textAlign: TextAlign.center,
          // ),
          Table(
            // columnWidths: {1:TableColumnWidth.,},

            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
              // borderRadius: BorderRadius.circular(15),
            ),
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      'SGPA',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      '3.5',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      'SGPA',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      '3.5',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Table(
            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,

              // borderRadius: BorderRadius.circular(15),
            ),
            children: [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Text(
                    '2nd Semester',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),

          Table(
            // columnWidths: {1:TableColumnWidth.,},

            border: TableBorder.all(
              color: const Color.fromARGB(255, 6, 76, 134),
              width: 0.2,
              // borderRadius: BorderRadius.circular(15),
            ),
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      'SGPA',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      '3.5',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      'SGPA',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015,
                      bottom: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Text(
                      '3.5',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
