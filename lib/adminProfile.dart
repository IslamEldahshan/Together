import 'package:flutter/material.dart';
import 'package:graduation/add_verified_user.dart';
import 'package:graduation/conponents/components.dart';
import 'package:graduation/cubit/cubit.dart';
import 'package:graduation/foundation.dart';
import 'package:graduation/weight/clothes.dart';
import 'package:hexcolor/hexcolor.dart';

import 'view/Status.dart';
class admin_profile extends StatefulWidget {
  const admin_profile({Key? key}) : super(key: key);
  @override
  State<admin_profile> createState() => _admin_profileState();
}
class _admin_profileState extends State<admin_profile> {

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
                    ),
                  // backgroundImage: NetworkImage('${cubit.adminProfileModel!.data!.avatar}'),
                ),
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
                            cubit.adminProfileModel!.data!.name.toString(),
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
                                "Admin",
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
                  '${cubit.adminProfileModel!.data!.phone}',
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
                  '${cubit.adminProfileModel!.data!.email}',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: HexColor("#D9D9D9"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              color: HexColor('#000000'),
              height: .2,
              width: double.infinity,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: HexColor("#FFFFFF"),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Normal Request",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: HexColor("#FFFFFF"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "260",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Inter",
                    color: HexColor("#FFFFFF"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.attach_email_outlined,
                    color: HexColor("#FFFFFF"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      "Request Followed by foundation",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: HexColor("#FFFFFF"),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "210",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Inter",
                      color: HexColor("#FFFFFF"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                  color: HexColor("#FFFFFF"),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Your Acceptations",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    color: HexColor("#FFFFFF"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "180",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Langar",
                    color: HexColor("#FFFFFF"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(

                children: [
                  Container(
                    width: 115,
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
                        child: Text(
                          "showrooms",
                          style: TextStyle(
                            fontSize: 14,
                            color: HexColor('#096075'),
                            fontFamily: "Langar",
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                          navigateTo(context: context, screen: Status());
                        },
                        child: Text(
                          "pending request",
                          style: TextStyle(
                            fontSize: 14,
                            color: HexColor('#096075'),
                            fontFamily: "Langar",
                          ),
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
                            MaterialPageRoute(builder: (context) => add_verified_user()),
                          );
                        },
                        child: Text(
                          "add a verified user",
                          style: TextStyle(
                            fontSize: 14,
                            color: HexColor('#096075'),
                            fontFamily: "Langar",
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




