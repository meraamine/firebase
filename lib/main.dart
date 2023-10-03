import 'package:firebase/pages/HomePage.dart';
import 'package:firebase/pages/LoginPage.dart';
import 'package:firebase/pages/WelcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_core_dart/firebase_core_dart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'models/authmodel.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    ChangeNotifierProvider<AuthModel>(
      create: (_) => AuthModel(),
      child: MaterialApp(
        home: Consumer<AuthModel>(
          builder: (_, auth, __) => auth.isSignedIn ? HomePage() : WelcomePage(),
        ),
      ),
    ),
  );
}










// /*class Mylogin extends StatelessWidget {
//   const Mylogin({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner:false,
//       home: MyScfold(),
//     );
//   }
// }
//
// class MyScfold extends StatefulWidget {
//   const MyScfold({super.key});
//
//   @override
//   State<MyScfold> createState() => _MyScfoldState();
// }
//
// class _MyScfoldState extends State<MyScfold> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appBar: AppBar(title: Text("Login"),),
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             margin: EdgeInsets.all(30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 FlutterLogo(
//                   size: 70,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text("LoginScreen"),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 TextField(
//                     decoration:
//                     InputDecoration(filled: true, labelText: "UserName")),
//                 SizedBox(height: 12.0),
//                 TextField(
//                   decoration:
//                   InputDecoration(filled: true, labelText: "PassWord"),
//                   obscureText: true,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       child: Text('CANCEL'),
//                       onPressed: () {
//                         // TODO: Clear the text fields (101)
//                       },
//                     ),
//                     // TODO: Add an elevation to NEXT (103)
//                     // TODO: Add a beveled rectangular border to NEXT (103)
//                     ElevatedButton(
//                       child: Text('SIGN UP'),
//                       onPressed: () {
//                         // TODO: Show the next page (101)
//                       },
//                     ),
//                     ElevatedButton(
//                       child: Text('NEXT'),
//                       onPressed: () {
//                         // TODO: Show the next page (101)
//                       },
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }*/
//
//
// //
// // class SignUpController{
// //
// //   static  SignUpController get instance=> Get.find();
// //   FirebaseAuth.instance
// //       .authStateChanges()
// //       .listen((User? user) {
// //   if (user == null) {
// //   print('User is currently signed out!');
// //   } else {
// //   print('User is signed in!');
// //   }
// //   });
// //
// // }};
