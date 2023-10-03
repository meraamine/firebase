import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/authmodel.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final model = context.read<AuthModel>();
            await model.signIn(email: 'meraamin.s@gmail.com', password: 'Mera/2023');
            Navigator.pop(context);
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}