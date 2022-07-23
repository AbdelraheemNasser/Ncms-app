import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ncms/backend/dio_helper.dart';
import 'package:ncms/backend/loading_screen.dart';
import 'package:ncms/components/comp.dart';
import 'package:ncms/main.dart';
import 'package:ncms/models/usermodel.dart';

// ignore: unused_import

// ignore: camel_case_types
// ignore: must_be_immutable
class Login extends StatefulWidget {
// ignore: camel_case_types

  var username = TextEditingController();

  var passwordcontroler = TextEditingController();
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formkeys = GlobalKey<FormState>();

  bool makepassviwe = true;
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: loading
          ? loading_screen()
          : Scaffold(
              backgroundColor: Colors.white,
              body: Stack(children: [
                Container(
                  width: 400,
                  height: 400,
                  child: CustomPaint(
                    painter: OpenPainter(),
                  ),
                ),
                Container(
                  width: 0,
                  height: 0,
                  child: CustomPaint(
                    painter: OpenPainter2(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 35, top: 220),
                  child: const Text(
                    "Welcome Back",
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        right: 35,
                        left: 35,
                        top: MediaQuery.of(context).size.height * 0.5),
                    child: Column(children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: MyApp.logintst.username,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_rounded,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: MyApp.logintst.passwordcontroler,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 320,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(children: [
                        Text(
                          'Dont Have Account?',
                          style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color(0xff4c505b),
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ))
                      ]),
                    ]),
                  ),
                ),
              ]),
            ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(00, 00), 400, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff4c505b)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(600, 100), 400, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
