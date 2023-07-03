import 'package:flutter/material.dart';
import 'package:graduation/add_verified_user.dart';
import 'package:graduation/foundation.dart';
import 'package:hexcolor/hexcolor.dart';

class foundation_profile extends StatefulWidget {
  const foundation_profile({Key? key}) : super(key: key);

  @override
  State<foundation_profile> createState() => _foundation_profileState();
}

class _foundation_profileState extends State<foundation_profile> {
  @override
  Widget build(BuildContext context) {
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
                           "Areeg Mohamed",
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
                               "Foundation",
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
           SizedBox(
             height: 45,
           ),
           Row(
             children: [
               Icon(
                 Icons.phone,
                 color: HexColor("#D9D9D9"),
               ),
               SizedBox(
                 width: 20,
               ),
               Text(
                 "01012054367",
                 style: TextStyle(
                   fontSize: 16,
                   fontFamily: "Inter",
                   color: HexColor("#D9D9D9"),
                 ),
               ),
             ],
           ),
           SizedBox(
             height: 15,
           ),
           Row(
             children: [
               Icon(
                 Icons.email_outlined,
                 color: HexColor("#D9D9D9"),
               ),
               SizedBox(
                 width: 20,
               ),
               Text(
                 "AreegMohammed@gmail.com",
                 style: TextStyle(
                   fontSize: 16,
                   fontFamily: "Inter",
                   color: HexColor("#D9D9D9"),
                 ),
               ),
             ],
           ),
           SizedBox(
             height: 35,
           ),
           Container(
             color: HexColor('#000000'),
             height: .2,
             width: double.infinity,
           ),
           SizedBox(
             height: 30,
           ),
           Row(
             children: [
               Icon(
                 Icons.notifications,
                 color: HexColor("#FFFFFF"),
               ),
               SizedBox(
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
             height: 40,
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
                         MaterialPageRoute(builder: (context) => foundation()),
                       );
                     },
                     child: Center(
                       child: Text(
                         "showrooms",
                         style: TextStyle(
                           fontSize: 14,
                           color: HexColor('#096075'),
                           fontFamily: "Langar",
                         ),
                       ),
                     )),
               ),
               SizedBox(
                 height: 25,
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
