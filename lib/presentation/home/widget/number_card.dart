import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/pallet.dart';

import '../../../core/globel_variable.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: deviceWidth * 0.07,
            ),
            Container(
              width: deviceWidth * 0.31,
              height: deviceHeight * 0.23,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/img/netdow3.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: deviceHeight*0.010,
            child: Text(
          "${index +1}",
          style: TextStyle(fontSize: 90,decoration: TextDecoration.none, foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 4
            ..color = Colors.white,),
        ))
      ],
    );
  }
}
