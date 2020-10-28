import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: RaisedButton(
              color: Colors.blue,
              padding: EdgeInsets.fromLTRB(100, 14, 100, 14),
              child: Text(
                'Entrar',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              onPressed: () => {Navigator.pushNamed(context, '/home')},
            ),
          )),
    );
  }
}
