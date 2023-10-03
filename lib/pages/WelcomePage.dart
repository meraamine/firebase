import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WelcomePage')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage())),
          child: Text('Go to Login Page'),
        ),
      ),
    );
  }
}
