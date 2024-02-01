import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/globel_variable.dart';
import '../../../widgets/custom_buttom.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: deviceWidth*0.18,
            height: deviceHeight*0.65,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: deviceHeight*0.01,),
                Text("FEB",style:
                TextStyle(color: Colors.grey,
                    // fontWeight: FontWeight.w200,
                    fontSize: 16
                ),),
                Text("11",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
              ],
            ),
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: deviceWidth*0.82,
                  height: deviceHeight*0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(image:
                      AssetImage("assets/img/avengers.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  top: deviceHeight*0.22,
                  left: deviceWidth*0.63,
                  child: CircleAvatar(
                      backgroundColor: Colors.black54,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.volume_off,
                            color: Colors.white,))),
                ),
              ],
            ),
            Container(
              width: deviceWidth*0.82,
              height: deviceHeight*0.35,
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('TALLGIRL2',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width:deviceWidth*0.1,),
                      CustomButton(icon: Icons.notifications, title: 'Remind me',),
                      SizedBox(width:10,),
                      CustomButton(icon: Icons.info, title: 'info',),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Comming On Friday"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("TallGirl2",style:
                      TextStyle(fontSize: 20),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("In this sequel, influencers looking to\n breathe new life into a Texas "
                          "ghost\ntown encounter Leatherface, an infam\nous  killer who wears a"
                          " mask of human\n skin.",style:
                      TextStyle(color: Colors.grey),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
