import 'package:flutter/cupertino.dart';

import '../core/globel_variable.dart';
import 'main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key,required this.title}):super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         MainTitle(title: title),
        SizedBox(height: deviceHeight*0.01,),
        LimitedBox(
          maxHeight: deviceHeight * 0.36,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
                  (index) => Padding(
                padding: EdgeInsets.only(right: 12.0), // Adjust the value as needed
                child: MainCard(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
