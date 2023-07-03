import 'package:flutter/material.dart';
import 'package:graduation/add_verified_user.dart';
import 'package:graduation/conponents/constants.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/foundation.dart';
import 'package:graduation/view/food.dart';
import 'package:graduation/weight/clothes.dart';
import 'package:hexcolor/hexcolor.dart';
class guest_profile extends StatefulWidget {
  const guest_profile({Key? key}) : super(key: key);

  @override
  State<guest_profile> createState() => _guest_profileState();
}

class _guest_profileState extends State<guest_profile> {
  @override
  Widget build(BuildContext context) {

    var cubit = AppCubit.get(context);

    return Scaffold( backgroundColor: HexColor('#096075'),
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
        backgroundColor: HexColor('#2292A6'),
        elevation: 0,
      ),
      body:  Padding(
        padding: EdgeInsetsDirectional.only(start: 30, end: 20, top: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(
                      "assets/image/photo1.jpg",
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${cubit.userProfileModel!.data!.name}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: "Inter",
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: HexColor("#D9D9D9"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '$type',
                                style: TextStyle(
                                    color: HexColor("#D9D9D9"),
                                    fontSize: 20,
                                    fontFamily: "Inter"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: HexColor("#D9D9D9"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '${cubit.userProfileModel!.data!.phone}',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: HexColor("#D9D9D9"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: HexColor("#D9D9D9"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '${cubit.userProfileModel!.data!.email}',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: HexColor("#D9D9D9"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: HexColor("#D9D9D9"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '${cubit.userProfileModel!.data!.location}',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: HexColor("#D9D9D9"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: HexColor('#000000'),
              height: .2,
              width: double.infinity,
            ),

            const SizedBox(
              height: 50,
            ),

            Row(
              children: [
                Container(
                  width: 140,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Clothes()),
                        );
                      },
                      child: Row(
                        children: [
                          Icon( Icons.accessibility_new_rounded,color: Colors.black,),
                          SizedBox(width: 4,),
                          Text(
                            "Available",
                            style: TextStyle(
                              fontSize: 16,
                              color: HexColor('#000000'),
                              fontFamily: "Langar",
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 140,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Food()),
                        );
                      },
                      child:
                      Row(
                        children: [
                          Icon( Icons.donut_small,color: Colors.black,),
                          SizedBox(width: 4,),
                          Text(
                            "Available",
                            style: TextStyle(
                              fontSize: 16,
                              color: HexColor('#000000'),
                              fontFamily: "Langar",
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: 180,
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => add_verified_user()),
                        );
                      },
                      child: Center(
                        child: Text(
                          "request a verification",
                          style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#000000'),
                            fontFamily: "Langar",
                          ),
                        ),
                      )),
                ),
              ],
            ),


          ],
        ),
      ),

    );
  }
}

