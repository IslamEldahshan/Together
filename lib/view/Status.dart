
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);
  @override
  State<Status> createState() => _StatusState();
}
class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#096075'
      ),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(217, 217, 217, 0.41),
          ),
      body: Container(
          child:ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height:137 ,
                width:350 ,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color.fromRGBO(217, 217, 217, 0.41),
                ) ,
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('image/image1.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Text('Ahamed Mostafa',style: GoogleFonts.inter(
                          textStyle: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.w700),
                      ),),
                                Row(
                                  children: [
                                  Text('Guest',style: GoogleFonts.inter(
                                    textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),
                                  ),),
                                      ]
                                ),
                                Text('Ahamed@gmail.com',style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
                                ),),
                                Row(
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                        onPressed: () => Navigator.pop(context,'Accept'),
                                        child: Text('Accept',style: GoogleFonts.langar(
                                          textStyle: TextStyle(color:Colors.black,fontSize:16,fontWeight: FontWeight.w700),
                                        ),),),
                                      SizedBox(
                                        width:15,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                        onPressed: () => Navigator.pop(context,'Remove'),
                                        child: Text('Remove',style: GoogleFonts.langar(
                                          textStyle: TextStyle(color:Colors.black,fontSize:16,fontWeight: FontWeight.w700),
                                        ),),),
                                    ]
                                ),
                              ]
                          )
                      )
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height:137 ,
                width:350 ,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color.fromRGBO(217, 217, 217, 0.41),
                ) ,
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('image/image2.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Text('nourhan ahmad',style: GoogleFonts.inter(
                            textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                          ),
                                ),
                                Text('Verified user',style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                                ),),
                                Text('nourhan1234@gmail.com',style: GoogleFonts.inter(
                        textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                      ),),
                                Row(
                                    children: [
                                ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                   onPressed: () => Navigator.pop(context,'Accept'),
                                child: Text('Accept',style: GoogleFonts.langar(
                                 textStyle: TextStyle(color:Colors.black,fontSize:16),
                                  ),),),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  ElevatedButton(
                                   style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                  onPressed: () => Navigator.pop(context,'Remove'),
                                   child: Text('Remove',style: GoogleFonts.langar(
                                        textStyle: TextStyle(color:Colors.black,fontSize:16),
                                      ),),),
                                    ]
                                ),
                              ]
                          )
                      )
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height:137 ,
                width:350 ,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color.fromRGBO(217, 217, 217, 0.41),
                ) ,
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('image/image3.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Text('khaled Mostafa',style:  GoogleFonts.inter(
                          textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                      ),
                                ),
                                Text('Verified user',style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                                ),
                                ),
                                Text('khaled1234@gmail.com',style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                                ),),
                                Row(
                                  children: [
                                ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                        onPressed: () => Navigator.pop(context,'Accept'),
                        child: Text('Accept',style: GoogleFonts.langar(
                          textStyle: TextStyle(color:Colors.black,fontSize:16),
                        ),),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                 onPressed: () => Navigator.pop(context,'Remove'),
                                  child: Text('Remove',style: GoogleFonts.langar(
                              textStyle: TextStyle(color:Colors.black,fontSize:16),
                             ),),),]
                                ),
                              ]
                          )
                      )
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height:137 ,
                width:350 ,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color.fromRGBO(217, 217, 217, 0.41),
                ) ,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Image.asset('image/image4.jpg',
                  height: 100,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                    Text('Hazem mostafa',style:GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                ),
                    ),
                  Text('Guest',style: GoogleFonts.inter(
                  textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                ),
                  ),
                      Text('Hazem123456@gmail.com',style: GoogleFonts.inter(
                        textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                      ),),
                      Row(
                        children: [
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                          onPressed: () => Navigator.pop(context,'Accept'),
                       child: Text('Accept',style: GoogleFonts.langar(
                       textStyle: TextStyle(color:Colors.black,fontSize:16),
                          ),),),
                          SizedBox(
                            width:15,
                          ),
                         ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                         onPressed: () => Navigator.pop(context,'Remove'),
                          child: Text('Remove',style: GoogleFonts.langar(
                          textStyle: TextStyle(color:Colors.black,fontSize:16),
                             ),),),
                       ]
                      ),
                   ]
                      )
                        )
                  ]
                  ),
                ),
              Container(
                margin: EdgeInsets.all(10),
                height:137 ,
                width:350 ,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color.fromRGBO(217, 217, 217, 0.41),
                ) ,
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('image/image2.jpg',
                        height: 100,
                        width: 100,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                              children: [
                                Text('Hader khaled',style: GoogleFonts.inter(
                          textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                      ),
                                ),
                                Text('Guest',style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                             ),
                                ),
                                Text('Hader123@gmail.com',style: GoogleFonts.inter(
                                textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w700),
                                  ),),
                                Row(
                                    children: [

                                ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                onPressed: () => Navigator.pop(context,'Accept'),
                                  child: Text('Accept',style: GoogleFonts.langar(
                             textStyle: TextStyle(color:Colors.black,fontSize:16),
                                ),),),
                                      SizedBox(
                                        width: 15,
                                      ),
                               ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                                 onPressed: () => Navigator.pop(context,'Remove'),
                                 child: Text('Remove',style: GoogleFonts.langar(
                                    textStyle: TextStyle(color:Colors.black,fontSize:16),
                                       ),),),
                                    ]
                                ),
                              ]
                          )
                      )
                    ]
                ),
              ),
           ]
          ),
      ),
     );

  }
}



