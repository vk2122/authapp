// ignore_for_file: prefer_const_constructors

import 'package:authapp/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              "Log In",
              style: TextStyle(color: Colors.purple, 
              fontWeight: FontWeight.w800, fontSize: 40),
            ),
            SizedBox(
              height: height/5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }, 
              child: Text('Home'))
          ],
        ),
      ),
    );
  }
}
