import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/conponents/components.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/cubit/states.dart';
import 'package:graduation/home.dart';
import 'package:graduation/layout/layout.dart';
import 'package:graduation/network/local/cache_helper.dart';
import 'package:graduation/start.dart';
import 'package:hexcolor/hexcolor.dart';

class logIn extends StatefulWidget {
  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          CacheHelper.saveData(
            key: 'type',
            value: cubit.loginModel!.userData!.userRole,
          );
          type = CacheHelper.getData(key: 'type');
          CacheHelper.saveData(
            key: 'token',
            value: cubit.loginModel!.token,
          ).then((value) {
            if(cubit.loginModel != null) {
              cubit.selectProfile(type: type!);
              token = cubit.loginModel!.token;
              cubit.getHomeData();
              navigateAndFinish(context, const LayoutScreen());
            }
          });
        }
      },
      builder: (context, state) {
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
                          style: TextStyle(
                            color: HexColor('#FFFFFF'),
                            fontSize: 36.0,
                            fontFamily: "Langar",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                      ),
                      Text(
                        'Log in with your account',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: "Inter",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 45,
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(217, 217, 217, 0.22),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(217, 217, 217, 0.22),
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white,
                            )),
                            filled: true,
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Inter"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        height: 45,
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
                                borderSide: BorderSide(
                              color: Color.fromRGBO(217, 217, 217, 0.22),
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white,
                            )),
                            filled: true,
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Inter"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          print(emailController.text);
                          print(passwordController.text);
                          cubit.signIn(
                            email: emailController.text,
                            password: passwordController.text,
                            type: 'admin',
                          );

                          // navigateAndFinish(context, LayoutScreen());
                        },
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: HexColor('#066A82'),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 40,
                            width: 150,
                            child: const Center(
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Langar",
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Text(
                        "Or sign up with",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "Inter"),
                      )),
                      SizedBox(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an account?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => start()),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
