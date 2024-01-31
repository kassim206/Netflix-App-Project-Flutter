import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/globel_variable.dart';
import 'package:netflix_app/core/pallet.dart';

class VideoListItem extends StatelessWidget {
  final int index;
   const VideoListItem({Key? key,required this.index}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color:Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black54,
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.volume_mute,color: Colors.white,))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/netdow2.jpg'),
                    ),
                    VideoItems(icons: Icons.emoji_emotions,titile: 'LOL',),
                    VideoItems(icons: Icons.add,titile: 'My List',),
                    VideoItems(icons: Icons.share,titile: 'Share',),
                    VideoItems(icons: Icons.play_arrow,titile: 'Play',),

                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
class VideoItems extends StatelessWidget {
  final IconData icons;
  final String titile;
  const VideoItems({
    Key? key,required this.titile,
    required this.icons})
      :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Column(
        children: [
          Icon(icons,color: Colors.white,),
          Text(titile),
        ],
      ),
    );
  }
}
