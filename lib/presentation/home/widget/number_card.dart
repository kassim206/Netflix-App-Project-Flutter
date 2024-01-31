import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/pallet.dart';

import '../../../core/globel_variable.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth*0.31,
      height: deviceHeight*0.23,
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage("assets/img/netdow3.jpg"),fit: BoxFit.cover),
        color: pallete.barColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
