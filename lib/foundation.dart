import 'package:flutter/material.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/foundation_profile.dart';

import 'package:graduation/logIn.dart';
import 'package:hexcolor/hexcolor.dart';

class foundation extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var mobilePhoneController = TextEditingController();
  var ParcodeController = TextEditingController();
  var LocationController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    var cubit = AppCubit.get(context);

    return Scaffold(
      backgroundColor: HexColor('#096075'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'TOGETHER',
                      style: TextStyle(color: HexColor('#FFFFFF'),
                        fontSize: 36.0,fontFamily: "Langar",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Create your Account',
                    style: TextStyle(
                      fontSize: 24.0,fontFamily: "Inter",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ), SizedBox(
                    height: 10.0,
                  ),
                  Container(height: 45,
                    child: TextFormField(

                      controller: nameController,
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(

                        fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 0.22),)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,)
                        ),

                        filled: true,
                        labelText: "User name",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(height: 45,
                    child: TextFormField(

                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(

                        fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 0.22),)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,)
                        ),

                        filled: true,
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(height: 45,
                    child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(

                        fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 0.22),)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,)
                        ),

                        filled: true,
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(height: 45,
                    child: TextFormField(
                      controller: confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(

                        fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 0.22),)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,)
                        ),

                        filled: true,
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(height: 45,
                    child: TextFormField(
                      controller: mobilePhoneController,
                      keyboardType: TextInputType.number,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },

                      decoration: InputDecoration(

                        fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 0.22),)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,)
                        ),

                        filled: true,
                        labelText: "Mobile phone",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  Container(height: 45,
                    child: TextFormField(

                      controller: ParcodeController,
                      keyboardType: TextInputType.number,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },

                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 0.22),)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,)
                        ),

                        filled: true,
                        labelText: "Parcode",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(height: 45,
                    child: TextFormField(
                      controller: LocationController,
                      keyboardType: TextInputType.text,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(

                        fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(217, 217, 217, 0.22),)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,)
                        ),

                        filled: true,
                        labelText: "Location",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),

                  SizedBox(
                    height: 12.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      cubit.signUp(
                        context: context,
                        name: nameController.text,
                        email: emailController.text,
                        phone: mobilePhoneController.text,
                        password: passwordController.text,
                        password_confirmation: confirmPasswordController.text,
                        location: LocationController.text,
                        id: ParcodeController.text,
                        user_type: 'charity',
                      );
                      // Navigator.push(
                      //   context,
                      //   //دي هتتشال قدام
                      //   MaterialPageRoute(builder: (context) => foundation_profile()),
                      // );
                      },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(color: HexColor('#066A82'),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 40,
                        width: 150,
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.white,fontFamily: "Langar",
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(child: Text("Or sign up with",
                    style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: "Inter"),)),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.white, fontSize: 16,),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => logIn()),
                          );},


                        child: Text(
                          'Login here',
                          style: TextStyle(color: Colors.white, fontSize: 16,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),)
          ,
        )
        ,
      )
      ,
    );
  }}
