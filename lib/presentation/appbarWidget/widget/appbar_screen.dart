import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/globel_variable.dart';
import 'package:netflix_app/core/pallet.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
        SizedBox(width: 10,),
        Container(
          color: pallete.indicatorColor,
          width: deviceWidth*0.06,
          height: deviceHeight*0.03,
        ),
      ],
    );
  }
}
