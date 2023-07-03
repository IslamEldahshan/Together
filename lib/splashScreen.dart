import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:graduation/conponents/components.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/layout/layout.dart';
import 'package:graduation/logIn.dart';
import 'package:graduation/start.dart';
import 'package:hexcolor/hexcolor.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({Key? key}) : super(key: key);

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  @override
  void initState() {
    super.initState();
    if (token != null) {
      AppCubit.get(context).getHomeData();
    }
    Timer(Duration(seconds: 4), () {
      if(token != null){
        navigateAndFinish(context, LayoutScreen());
      }
      else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>logIn()));

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:HexColor('#096075') ,
      body: SafeArea(
        child: Container(width: double.infinity,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Together",style: TextStyle(color: Colors.white,fontFamily: "Langar",fontSize: 48),),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>( HexColor('#096075'),),)
            ],
          ),
        ),
      ),
    );
  }
}
