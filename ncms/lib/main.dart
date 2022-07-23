import 'package:flutter/material.dart';
import 'package:ncms/models/usermodel.dart';
import 'package:ncms/modules/login_screen/login.dart';
import 'package:ncms/modules/login_screen/registration.dart';
import 'package:ncms/modules/login_screen/registration2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static Login logintst = Login();
  static userdata modellogin;
  registeration register = registeration();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => logintst,
          'register': (context) => register,
          'register2': (context) => register2(),
        });
  }
}
