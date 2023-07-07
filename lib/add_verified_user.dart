import 'package:flutter/material.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/logIn.dart';
import 'package:hexcolor/hexcolor.dart';

class add_verified_user extends StatefulWidget {
  @override
  State<add_verified_user> createState() => _add_verified_userState();
}

class _add_verified_userState extends State<add_verified_user> {

  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var idController = TextEditingController();
  var locationController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var typeController = TextEditingController();

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

                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Enter verified information',
                    style: TextStyle(
                      fontSize: 20.0,fontFamily: "Langar",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(height: 45,
                    child: TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      obscureText: false,
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
                        labelText: "Name",
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
                      obscureText: false,
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
                      controller: phoneController,
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
                      controller: locationController,
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
                  Container(height: 45,
                    child: TextFormField(

                      controller: idController,
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
                        labelText: "ID",
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

                      controller: typeController,
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
                        labelText: "Type",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Inter"),

                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),





                  MaterialButton(
                    onPressed: () {
                      print('Add Button Has Clicked...');
                      cubit.verifiedUser(
                        token: 'Bearer $token',
                        name: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        confirmPassword: confirmPasswordController.text,
                        phone: phoneController.text,
                        location: locationController.text,
                        nat_id: idController.text,
                        user_type: typeController.text,
                      );
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(color: HexColor('#066A82'),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 50,
                        width: 148,
                        child: Center(
                          child: Text(
                            'ADD',
                            style: TextStyle(
                              color: Colors.white,fontFamily: "Langar",
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),

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
  }
}