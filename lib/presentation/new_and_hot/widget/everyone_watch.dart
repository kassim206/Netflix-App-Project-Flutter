import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/new_and_hot/widget/video_widget.dart';

import '../../../core/globel_variable.dart';
import '../../../widgets/custom_buttom.dart';

class EveryOneWatch extends StatelessWidget {
  const EveryOneWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            "Friends",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          const Text(
            "In this sequel, influencers looking to breathe new life into a Texas "
                "ghosttown encounter Leatherface, an infamous  killer who wears a"
                " mask of humanskin.",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: deviceHeight*0.02,),
          const VideoWidget(),
          SizedBox(height: deviceHeight*0.025,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(icon: Icons.share, title: 'share',),
              SizedBox(width: deviceWidth*0.02,),
              CustomButton(icon: Icons.add, title: 'My List',),
              SizedBox(width: deviceWidth*0.02,),
              CustomButton(icon: Icons.play_arrow, title: 'Play',),
              SizedBox(width: deviceWidth*0.03,),
            ],
          )
        ]);
  }
}
