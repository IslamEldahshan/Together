
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);
  @override
  State<Food> createState() => _FoodState();
}
class _FoodState extends State<Food> {
  final List<Map<String ,dynamic>> gridMap=[
    {
      'images':'image/pizza.jpg',
      'title':'Pizza margreta'
         'for 2 persons',},
    {
      'images':'image/meat.jpg',
      'title':'Crispy Chicken'
          'for 5 person',},
    {
      'images':'image/lazania.jpg',
      'title':'Salmon'
          'for 4 persons ',},
    {
      'images':'image/pasta.jpg',
      'title':'Pasta'
      'for 3 persons',},
    {
      'images':'image/sandwich.jpg',
      'title':'Burger'
           'for 2 persons',},
    {
      'images':'image/kerb.jpg',
      'title':'Cream Cheese'
              'for 1 person ',},
  ];
  int  currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#096075'
      ),
      body: SafeArea(
        child: ListView(children: [
          SizedBox(height: 40),
        GridView.count(
              shrinkWrap: true,
                crossAxisCount:2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15,
              children:
              List.generate(6, (index) {
                  return Center(
                      child: Column(
                       children: [
                         ClipRRect(
                           borderRadius:BorderRadius.only(topLeft:Radius.circular(16.0), topRight: Radius.circular(16.0)),
                             child: Image.asset("${gridMap.elementAt(index)['images']}",
                               height: 118,
                               width: 150,
                               fit: BoxFit.cover,
                             ),
                         ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [SizedBox(width:5.5),
                                Text("${gridMap.elementAt(index)['title']}",style:GoogleFonts.inter(
                               textStyle: TextStyle(color: Colors.white),fontSize:14,fontWeight: FontWeight.w400),),
                                IconButton(
                                    onPressed:(){},
                                    icon:Icon(Icons.add_circle_sharp,color: Colors.white,)),
                              ],
                            ),
                       ],
                      ),
                  );
                }
                ),
            ),
    ]
        ),
      ),
    );
  }
}
