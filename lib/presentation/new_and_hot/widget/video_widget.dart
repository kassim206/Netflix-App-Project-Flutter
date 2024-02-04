import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/globel_variable.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: deviceWidth,
          height: deviceHeight*0.3,
          decoration: const BoxDecoration(
              image: DecorationImage(image:
              AssetImage("assets/img/nhmg.jpg"),fit: BoxFit.cover)
          ),
        ),
        Positioned(
        bottom: 10,
          right: 10,
          child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.volume_off,
                    color: Colors.white,))),
        ),
      ],
    );
  }
}
