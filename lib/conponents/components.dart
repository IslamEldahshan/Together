import 'package:flutter/material.dart';
import 'package:graduation/conponents/colors.dart';

void navigateTo({
  required BuildContext context,
  required Widget screen,
}){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}


void navigateAndFinish(context, Widget screen) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false,
  );
}

Widget defaultButton({
  Color background = Colors.blue,
  Color textColor = Colors.white,
  required Function function,
  required String text,
  bool isUpperCase = false,
  double radius = 10.0,
  double? width,

}) => Container(
      width: width,
      child: MaterialButton(
        onPressed: () {
          function ();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
    );

Widget buildHomeItem({
  required String image,
  required String text,
}) => Container(
  clipBehavior: Clip.antiAliasWithSaveLayer,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadiusDirectional.circular(12.0),
  ),
  child: Column(
    children: [
      Row(
        children: [
          Container(
            width: 150.0,
            height: 150.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(12.0),
                bottomEnd: Radius.circular(12.0),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              image,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 5.0,
      ),
      const Divider(
        height: 1,
        color: Colors.black26,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: textColor,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Request Now',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'View',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: textColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
);

// Widget buildRequestItem({
//   required String image,
//   required String product,
//
// }) => Row(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadiusDirectional.circular(12.0,),
//       ),
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       child: Image.asset(
//         image,
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 10.0,
//         vertical: 20.0,
//       ),
//       child: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               product,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18.0,
//               ),
//             ),
//             SizedBox(
//               height: 15.0,
//             ),
//             // Favorite Icon
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Halal',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: textColor,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 Row(
//                   children: [
//                     InkWell(
//                       child: Icon(
//                         cubit.favorite,
//                         size: 20.0,
//                         color: Colors.red,
//                       ),
//                       onTap: () {
//                         cubit.changeFavoriteIcon();
//                       },
//                     ),
//                     const SizedBox(
//                       width: 5.0,
//                     ),
//                     Text(
//                       '9 likes',
//                       style: TextStyle(
//                         fontSize: 15.0,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'Self Collect',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: textColor,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.location_on,
//                   color: primaryColor,
//                 ),
//                 const Text(
//                   '18 km away',
//                 ),
//                 const SizedBox(
//                   width: 20.0,
//                 ),
//                 const CircleAvatar(
//                   radius: 10.0,
//                   backgroundColor: Colors.black,
//                   child: Icon(
//                     Icons.person,
//                     color: Colors.white,
//                     size: 17.0,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 5.0,
//                 ),
//                 const Text(
//                   'for 3',
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   ],
// );

