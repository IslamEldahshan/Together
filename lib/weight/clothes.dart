
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Clothes extends StatefulWidget {
  const Clothes({Key? key}) : super(key: key);

  @override
  State<Clothes> createState() => _ClothesState();
}
class _ClothesState extends State<Clothes> {
  final List<Map<String ,dynamic>> gridMap=[
    {
      'images':'image/blouver.png',
      'title':'Plouver for 15',},
    {
      'images':'image/blouse.jpg',
      'title':'White Shirt',
     },
    {
      'images':'image/baby.jpg',
      'title':'babies suit',},
    {
      'images':'image/imagggg.png',
      'title':'Jumbsuit',},
    {
      'images':'image/jacket.jpg',
      'title':'Jacket for 20',
    },
    {
      'images':'image/skirt.jpg',
      'title':'Brown Skirt',},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#096075'
      ),
      body: SafeArea(
        child: ListView(children: [
           Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount:2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 17,
              children:
              List.generate(6, (index) {
                return Center(
                    child: Column(mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius:BorderRadius.circular(16),
                          child: Image.asset("${gridMap.elementAt(index)['images']}",
                            height: 118,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                         Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("${gridMap.elementAt(index)['title']}",style:GoogleFonts.inter(
                                  textStyle: TextStyle(color: Colors.white),fontSize:14,fontWeight: FontWeight.w400),),
                              SizedBox(width: 25,),
                              IconButton(
                                  onPressed:(){},
                                  icon:Icon(Icons.add_circle_sharp,color: Colors.white,))
                            ],
                          ),
                      ],
                    ),
                );
              }
              ),
            ),
          ),
    ]
        ),
      ),
    
    );
  }
}

