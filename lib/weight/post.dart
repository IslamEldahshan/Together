
import 'dart:io';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);
  @override
  State<Post> createState() => _PostState();
}
class _PostState extends State<Post> {
  String selectedImagePath = '';
 int choose=1;
 int public=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#096075'
      ),
      body: ListView(children: [
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Post product',style:GoogleFonts.inter(
            textStyle: TextStyle(color: Colors.white),fontSize:24,fontWeight: FontWeight.w700),),
                SizedBox(height:15,),
                Card(color: Color.fromRGBO(217, 217, 217, 0.42),elevation: 50,
                  child: Column(
                  children: [
                        selectedImagePath == ''?Container(width: 350,height:100,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                  ),
                        child: Image.asset('image/imagee.png',height:75, width: 200,))
                        :Image.file(File(selectedImagePath), height:75, width:200, fit: BoxFit.cover,),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          padding:
                          MaterialStateProperty.all(const EdgeInsets.all(5)),
                          textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 24, color: Color.fromRGBO(217, 217, 217, 0.42),fontWeight:FontWeight.normal ))),
                      onPressed: () async {
                        selectImage();
                        setState(() {});
                      },
                      child: const Text('Add Images',style: TextStyle(color: Color.fromRGBO(9, 96, 117, 1)),)),
                ),]),),
                SizedBox(height:7,),
                Row(children: [ Radio(value: 1, groupValue: public, onChanged: (T) {print(T);setState(() {
                  public=T.hashCode;
                });
                }),
                  Expanded(
                    child: Text('Public ',style:GoogleFonts.inter(
                        textStyle: TextStyle(color: Colors.white),fontSize:14,fontWeight: FontWeight.w700),),
                  ),
                  Radio(value: 2, groupValue: public, onChanged: (T) {print(T);setState(() {
                    public=T.hashCode;
                  });}),
                  Expanded(
                    child: Text('Only community ',style:GoogleFonts.inter(
                        textStyle: TextStyle(color: Colors.white),fontSize:14,fontWeight: FontWeight.w700),),
                  ),],),
                Container(width: 350,
                  child: Text('Product Name',style: GoogleFonts.inter(
                    textStyle: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w700,
                    ), ),
                  ),
                ),
                Container(decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color.fromRGBO(217, 217, 217, 0.42),
                ),
                  height:70,
                  width:350,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                  ),
                    maxLines: 3,
                ),
                ),
                SizedBox(height:15,),
                Container(width: 350,
                  child: Text('Description..',style: GoogleFonts.inter(
                    textStyle: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w700,
                    ), ),
                  ),
                ),
                Container(decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color.fromRGBO(217, 217, 217, 0.42),
                ),
                  height:100,
                  width:350,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      hintText: 'wow ...........',
                    ),
                    maxLines:4,
                  ),
                ),
                Container(width:350,height: 80,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Chooose Category ',style: GoogleFonts.inter(
                        textStyle: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w700),
                      ),),
                      Radio(value: 1, groupValue: choose, onChanged: (T) {print(T);setState(() {
                        choose=T.hashCode;
                      });
                      }),
                      Expanded(
                        child: Text(' Food',style:GoogleFonts.inter(
                            textStyle: TextStyle(color: Colors.white),fontSize:14,fontWeight: FontWeight.w700),),
                      ),
                      Radio(value: 2, groupValue: choose, onChanged: (T) {print(T);setState(() {
                        choose=T.hashCode;
                      });}),
                      Expanded(
                        child: Text('Clothe',style:GoogleFonts.inter(
                            textStyle: TextStyle(color: Colors.white),fontSize:14,fontWeight: FontWeight.w700),),
                      ),
                    ],
                  ),
                ),
                Container(width: 350,
                  child: Text('How many person will get it ??',style: GoogleFonts.inter(
                    textStyle: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w700,
                     ), ),
            ),
                ),
                Container(decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color.fromRGBO(217, 217, 217, 0.42),
                ),
                  height:50,
                  width:350,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  ),
                      hintText: 'Number only',
                ),
                      ),
                    ),
                    ]
                ),
            ),
        ),
       ]
      ),
    );
  }
  Future selectImage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      'Select Image From !',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            selectedImagePath = await selectImageFromGallery();
                            print('Image_Path:-');
                            print(selectedImagePath);
                            if (selectedImagePath != '') {
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("No Image Selected !"),
                              ));
                            }
                          },
                          child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset('image/gallery.png',
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text('Gallery'),
                                  ],
                                ),
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            selectedImagePath = await selectImageFromCamera();
                            print('Image_Path:-');
                            print(selectedImagePath);
                            if (selectedImagePath != '') {
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("No Image Captured !"),
                              ));
                            }
                          },
                          child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'image/camera.png',
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text('Camera'),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
  selectImageFromGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
  selectImageFromCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}
