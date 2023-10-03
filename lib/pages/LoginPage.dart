import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/authmodel.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),

      body: ListView(
        children: [
          _createDataTable(),
          SizedBox(height: 20,),
          TextField(),
          SizedBox(height: 10,),
          MyTextField2(),
          SizedBox(height: 10,),
          MyButton()
          ],
        ),
      );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () async {
      final model = context.read<AuthModel>();
      await model.signIn(email: 'test@test.com', password: 'test1234');
      Navigator.pop(context);
    },
      child: Text('Login'),
    );
  }
}



DataTable _createDataTable() {
  return DataTable(columns: _createColumns(), rows: _createRows());
}
List<DataColumn> _createColumns() {
  return [
    DataColumn(label: Text('ID')),
    DataColumn(label: Text('Book')),
    DataColumn(label: Text('Author'))
  ];
}
List<DataRow> _createRows() {
  return [
    DataRow(cells: [
      DataCell(Text('#100')),
      DataCell(Text('Flutter Basics')),
      DataCell(Text('David John'))
    ]),
    DataRow(cells: [
      DataCell(Text('#101')),
      DataCell(Text('Dart Internals')),
      DataCell(Text('Alex Wick'))
    ])
  ];
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration:InputDecoration
          (filled: true, labelText: "UserName",hintText:"UserName" )
    );
  }
}

class MyTextField2 extends StatefulWidget {
  const MyTextField2({super.key});

  @override
  State<MyTextField2> createState() => _MyTextField2State();
}

class _MyTextField2State extends State<MyTextField2> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(filled: true, labelText: "PassWord",hintText: "PassWord"),
                   obscureText: true,
    );
  }
}
