import 'package:flutter/material.dart';
import 'package:netflix_app/core/pallet.dart';
import 'package:netflix_app/presentation/mainPage/widget/main_screen.dart';

import 'core/globel_variable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
       backgroundColor: pallete.blackColor,
           textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
      )
      ),
      home: MainPage(),
    );
  }
}
