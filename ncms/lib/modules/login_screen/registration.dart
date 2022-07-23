import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ncms/backend/date.dart';
import 'package:ncms/backend/loading_screen.dart';

class registeration extends StatefulWidget {
  @override
  State<registeration> createState() => _registerationState();
}

class _registerationState extends State<registeration> {
  var formkeys = GlobalKey<FormState>();

  bool makepassviwe = true;
  bool loading = true;
  DateTime date;

  TimeOfDay time;
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
                    "Sign up",
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        right: 35,
                        left: 35,
                        top: MediaQuery.of(context).size.height * 0.35),
                    child: Column(children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.account_circle_rounded,
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
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DateTimeField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Birth Day',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        format: DateFormat("yyyy-MM-dd"),
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              initialDate: DateTime.now(),
                              lastDate: DateTime(2100));
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
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
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Confirmed Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(children: [
                        Container(
                          width: 320,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'register2');
                              },
                              child: Text(
                                "next",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        )
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
    canvas.drawCircle(Offset(400, 900), 400, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
