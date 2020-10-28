import 'package:flutter/material.dart';
import './screens//home.dart';
import './screens/login.dart';

void main() => runApp(Routes());

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
      initialRoute: '/login',
    );
  }
}
