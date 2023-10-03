import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/authmodel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Center(
        child: FloatingActionButton.extended(
          onPressed: () async {
            final model = context.read<AuthModel>();
            await model.signOut();
          },
          label: Text('Log out'),
        ),
      ),
    );
  }
}
