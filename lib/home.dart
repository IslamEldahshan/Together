import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/conponents/colors.dart';
import 'package:graduation/conponents/components.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/cubit/states.dart';
import 'package:graduation/view/food.dart';
import 'package:graduation/weight/clothes.dart';
import 'package:graduation/weight/post.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            backgroundColor: primaryColor,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                cubit.signOut(context);
                print(token);
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            title: Material(
              elevation: 5.0,
              color: primaryColor,
              shadowColor: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(25.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: searchController,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search here...',
                  hintStyle: TextStyle(
                    color: textColor,
                  ),
                  fillColor: HexColor('#D9D9D9'),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  // cubit.getRequestData(token: token!);
                  cubit.getAdminProfile(token: 'Bearer $token');
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50.0,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          defaultButton(
                              function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Post()),
                                );
                              },
                              text: 'Add Product',
                              background: Colors.white,
                              textColor: primaryColor),
                          const SizedBox(
                            width: 10.0,
                          ),
                          defaultButton(
                              function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Clothes()),
                                );
                              },
                              text: 'Nearby clothes',
                              background: Colors.white,
                              textColor: primaryColor),
                          const SizedBox(
                            width: 10.0,
                          ),
                          defaultButton(
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Food()),
                              );
                            },
                            text: 'Nearby Free Food',
                            background: Colors.white,
                            textColor: primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    const CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: primaryColor,
                    ),
                    const CircleAvatar(
                      radius: 47,
                      backgroundColor: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'S',
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'top Wasting',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontFamily: 'Langar',
                              ),
                            ),
                            Text(
                              'tart Sharing',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16.0,
                                fontFamily: 'Langar',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => buildHomeItem(
                      image: cubit.homeModel!.data![index].image!,
                      text: cubit.homeModel!.data![index].name!,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10.0,
                    ),
                    itemCount: cubit.homeModel!.data!.length,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
