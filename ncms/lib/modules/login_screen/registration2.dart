import 'package:flutter/material.dart';
import 'package:ncms/backend/loading_screen.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class register2 extends StatefulWidget {
  @override
  State<register2> createState() => _register2State();
}

class _register2State extends State<register2> {
  var formkeys = GlobalKey<FormState>();

  bool makepassviwe = true;
  bool loading = true;
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        loading = false;
      });
    });
    super.initState();
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
                    "Personal Data",
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
                          labelText: 'First Name',
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
                            Icons.account_circle_rounded,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Middle Name',
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
                            Icons.account_circle_rounded,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Last Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DropDown(
                        items: ["1", "2", "3"],
                        hint: Text("Choose Grade"),
                        isExpanded: true,
                        icon: Icon(
                          Icons.expand_more,
                          color: Colors.blue,
                        ),
                        onChanged: print,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.amber,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          labelText: 'Phone Number',
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
