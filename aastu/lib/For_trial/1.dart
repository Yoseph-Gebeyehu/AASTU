import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// final String stringResponse;

class Trial1 extends StatefulWidget {
  // const Trial1({Key? key}) : super(key: key);

  static const routeName = '/trial-1';

  @override
  State<Trial1> createState() => _Trial1State();
}

class _Trial1State extends State<Trial1> {
  Future apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users/2'));
    if (response.statusCode == 200) {
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          '',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
