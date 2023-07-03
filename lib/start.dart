import 'package:flutter/material.dart';
import 'package:graduation/admin.dart';
import 'package:graduation/affiliateGuest.dart';
import 'package:graduation/foundation.dart';
import 'package:graduation/guest.dart';
import 'package:graduation/logIn.dart';
import 'package:hexcolor/hexcolor.dart';

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#096075'
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                  child: Text(
                "Welcom to our community",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white
                ),
              )),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Please ",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.white
                ),
              )),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Press the right button for your identity",
                  style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: Colors.white
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
          Center(
            child: Container(
                    width: 202,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => admin()),
                          );
                        },
                        child: Text(
                          "ADMIN",
                          style: TextStyle(
                            fontSize: 24,
                            color: HexColor('#096075'),
                            fontFamily: "Langar",
                          ),
                        )),
                  ),
          ),
              SizedBox(
                height: 40,
              ),
                Center(
                  child: Container(
                    width: 202,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => foundation()),
                          );
                        },
                        child: Text(
                          "FOUNDATION",
                          style:
                              TextStyle(fontSize: 24, color: HexColor('#096075'),  fontFamily: "Langar",),
                        )),
                  ),
                ),
              SizedBox(
                height: 40,
              ),
                 Center(
                   child: Container(
                    width: 202,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                        onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => guest()),
                        );},
                        child: Text(
                          "USER",
                          style:
                              TextStyle(fontSize: 24, color: HexColor('#096075'),  fontFamily: "Langar",),
                        )),
                ),
                 ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
