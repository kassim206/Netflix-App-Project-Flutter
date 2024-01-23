import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/pallet.dart';

import '../../downloads/widget/download_screen.dart';
import '../../fast_laugh/fastlaugh_screen.dart';
import '../../home/home_screen.dart';
import '../../new_and_hot/new&hot_screen.dart';
import '../../search/search_screen.dart';
import 'bottom_nav.dart';

class MainPage extends StatelessWidget {
   MainPage({super.key});
  final pages =[
    HomePage(),
    NewAndHot(),
    FastLaugh(),
    SearchPage(),
    DownloadedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      backgroundColor: pallete.blackColor,
      body:ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int index, _) {
        return pages[index];
      },),
      bottomNavigationBar:const BottomNavbar(),
    ),
    );
  }
}
