import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/globel_variable.dart';
import 'package:netflix_app/core/pallet.dart';
import 'package:netflix_app/presentation/appbarWidget/widget/appbar_screen.dart';
import 'dart:math';
class DownloadedPage extends StatelessWidget {
  const DownloadedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(deviceHeight * 0.1),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView(
        children: [
          SizedBox(height: deviceHeight*0.02,),
          Row(
            children: [
              Icon(Icons.settings,color: pallete.textColor,),
              Text('Smart Downloads',style: GoogleFonts.montserrat(color: pallete.textColor),),
            ],
          ),
          SizedBox(height: deviceHeight*0.02,),
          Text('Indroducing Downloads for you',textAlign:TextAlign.center
            ,style:  GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
          SizedBox(height: deviceHeight*0.01,),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "We'll download a persanalised selection of",
                    style: TextStyle(color: pallete.greyColor,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "movies and Shows for you, so there's",
                    style: TextStyle(color: pallete.greyColor,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "always something to watch on your",
                    style: TextStyle(color: pallete.greyColor,fontSize: 16),
                  ),

                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "device.",
                    style: TextStyle(color: pallete.greyColor,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: deviceWidth*deviceWidth,
            height: deviceHeight*0.45,
            // color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: deviceHeight*0.2,
                  backgroundColor: Colors.blueGrey.withOpacity(0.5),
                ),
                Transform(
                  // alignment: FractionalOffset.topLeft,
                transform: Matrix4.identity()..rotateZ(0*3.1415927/180),
                  child: Container(
                    margin: EdgeInsets.only(right: 116),
                    width: deviceWidth*0.39,
                    height: deviceHeight*0.31,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/img/netdow1.jpg'),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Transform(
                  // alignment: FractionalOffset.topRight,
                  transform: Matrix4.identity()..rotateZ(0*pi/180),
                  child: Container(
                    margin: EdgeInsets.only(left: 115),
                    width: deviceWidth*0.39,
                    height: deviceHeight*0.31,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/netdow3.jpg"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()..rotateZ(0*3.1415927/180),
                  child: Container(
                    width: deviceWidth*0.39,
                    height: deviceHeight*0.33,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage( "assets/img/netdow2.jpg"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: (){}
            ,child: Text('Setup'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Colors.white,
              onPressed: (){}
              ,child: Text('See What you can download'),
            ),
          ),
        ],
      ),
    );
  }
}
