import 'package:flutter/material.dart';

class Buttonnn extends StatelessWidget {
  static const routeName = '/button-style';
  final String title;
  final Widget icon;
  Buttonnn(this.title,this.icon);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 20.0),
              blurRadius: 30.0,
              color: Colors.black12,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 2, 23, 56),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(98.0),
                  topLeft: Radius.circular(98.0),
                  bottomRight: Radius.circular(200.0),
                ),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'QuickSand',
                      fontSize: 20,
                      color: Colors.orange),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
