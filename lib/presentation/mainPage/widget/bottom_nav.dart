import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/pallet.dart';
ValueNotifier<int>indexChangeNotifier = ValueNotifier(0);
class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier,
        builder: (context, int newIndex,_){
         return BottomNavigationBar(
             elevation: 0,
             currentIndex: newIndex,
             onTap: (index){
               indexChangeNotifier.value = index;
             },
             type: BottomNavigationBarType.fixed,
             backgroundColor: pallete.blackColor,
             selectedItemColor: Colors.white,
             unselectedItemColor: Colors.grey,
             selectedIconTheme: const IconThemeData(color: Colors.white),
             unselectedIconTheme: const IconThemeData(color: Colors.grey),
             items:const [
               BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
               BottomNavigationBarItem(icon: Icon(Icons.collections),label: 'New&hot'),
               BottomNavigationBarItem(icon: Icon(Icons.face),label: 'FastLaughs'),
               BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: 'Search'),
               BottomNavigationBarItem(icon: Icon(Icons.download_for_offline_outlined),label: 'downloads'),
             ]);
        }
    );
  }
}
