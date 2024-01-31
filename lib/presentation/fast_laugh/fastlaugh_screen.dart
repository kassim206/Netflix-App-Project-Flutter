import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/fast_laugh/video_list_items.dart';

class FastLaugh extends StatelessWidget {
  const FastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return VideoListItem(index: index,);
        }),
      )),
    );
  }
}