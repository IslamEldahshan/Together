
import 'package:flutter/cupertino.dart';
import 'package:graduation/conponents/components.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';
class Donate extends StatefulWidget {
  const Donate({Key? key}) : super(key: key);
  @override
  State<Donate> createState() => _DonateState();
}
class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#096075'
      ),
      body:ListView(children: [Padding(
      padding: const EdgeInsets.all(8.0),),
         Center(
          child:Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nour Kamel Abdelnaser ',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white,fontSize: 24,fontWeight:FontWeight.w800),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 370,
                height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              ),
                child: Image.asset('image/burger.jpg',
                  width: 350,
                  height: 300,
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(color: HexColor('#096075'),
                  child:Row(children: [
                Image.asset('image/image1.jpg',  height:70,
                  width:60,),
                  SizedBox(width: 10,),
                  Column(children: [
                    Text('Nour Kamel Abdelnaser ',style: GoogleFonts.inter(
                      textStyle: TextStyle(color: Colors.white,fontSize:23,fontWeight: FontWeight.w700),
                    ),),
                    Text('25 Dec,2022  11:11AM ',style: GoogleFonts.inter(
                      textStyle: TextStyle(color:  HexColor('#DADADAC9'),fontSize:14,fontWeight: FontWeight.w400),
                    ),),
                    SizedBox(height: 20,),
                    Row(
                        children: [
                          Icon( Icons.location_pin ),
                          SizedBox(width: 7),
                          Text('5 km away  ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          SizedBox(width: 30),
                          Icon( Icons.account_circle, ),
                          Text('for 2 person  ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ],
                  ),
                    ]
                        ),
                        ]
    ),
    ),
    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description',style: GoogleFonts.inter(
                          textStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),
                        ),),
                        Text('Cheesy Beef',style: GoogleFonts.inter(
                        textStyle: TextStyle(color: HexColor('#DADADAC9'),fontSize: 15,fontWeight: FontWeight.w400,),
                  ),),
                        SizedBox(height: 7,),
                        Text('Location',style: GoogleFonts.inter(
                          textStyle: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.w700),
                        ),),
                        Row(children: [
                            Icon( Icons.location_on, color:  HexColor('#DADADAC9'),),
                        Text('Faqous,6 Elgomhoria Street beside market nour',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(color:  HexColor('#DADADAC9'),fontSize: 15,fontWeight: FontWeight.w400,),
                          ),),]
                            ),
                        SizedBox(height: 7,),
                        Text('Delivery Method',style: GoogleFonts.inter(
                          textStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),
                        ),),
                        Text('Self Collect',style: GoogleFonts.inter(
                          textStyle: TextStyle(color: HexColor('#DADADAC9'),fontSize: 15,fontWeight: FontWeight.w400,),
                        ),),
                        SizedBox(height: 7,),
                        Text('Weight',style: GoogleFonts.inter(
                          textStyle: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.w700),
                        ),),
                        Text('0.3 KG',style: GoogleFonts.inter(
                          textStyle: TextStyle(color:  HexColor('#DADADAC9'),fontSize: 15,fontWeight: FontWeight.w400),
                        ),
                        ),
                      ],
                    ),
              ),
                ),
                 ElevatedButton(
                  style:   ElevatedButton.styleFrom(primary:Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),),
                    onPressed: () => showDialog<String>
                      (
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Are you Sure'),
                          content: SingleChildScrollView(
                          child: ListBody(
                            children: [Card(
                            ),Stack(),
                              Text('you will be notified via notification'),
                              Text('if your request is successful .'),
                              Text(' or not you can also check on yours '),
                              Text('REQUEST STATUS ',style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Colors.red,fontSize: 14,),
                              ),
                              ),
                              Row(children: [
                                 Text('CHAT',style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Colors.red,fontSize: 14,),
                                ),),
                              Text('function will be enabled once your '),
                            ]
                              ),
                              Text(' request is Accepted  / Successful'),
                            ],
                          ),
                        ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          actions: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                onPressed: () => Navigator.pop(context,'Cancel'),
                                child: Text('Cancel',style: GoogleFonts.langar(
                                  textStyle: TextStyle(color:Colors.white,fontSize:18),
                                ),),),SizedBox(width: 5,),
                               ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                            onPressed: () => Navigator.pop(context,'Ok'),
                            child: Text('Ok',style: GoogleFonts.langar(
                   textStyle: TextStyle(color:Colors.white,fontSize:18),
                     ),
                     ),
                               ),
                          ],
                        )
                    ),
                    child: Text('Request Now',
                      style: GoogleFonts.langar(
                      textStyle: TextStyle(color:Color.fromRGBO(6, 106, 130, 1),fontSize: 20),
                    ),
                    ),
                ),
                ]
    ),),
    ]
    ),
    );
  }
}
