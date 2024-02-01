import 'package:flutter/material.dart';

import '../../../core/globel_variable.dart';
import '../../../widgets/custom_buttom.dart';
import 'comming_soon.dart';

class TitleShow extends StatelessWidget {
  const TitleShow({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: deviceHeight * 0.06,
            color: Colors.transparent,
            child: TabBar(
              indicator: BoxDecoration(), // Set indicator to null
              tabs: [
                _buildTabContent(Colors.black, Colors.white, "assets/img/cup-popcorn.png", "Coming Soon"),
                _buildTabContent(Colors.black, Colors.white, "assets/img/eyelogo.png", "Everyone's Watching"),
              ],
            ),
          ),
          Container(
            height: deviceHeight,
            child: TabBarView(
              children: [
                _buildTabCommingSoon(),
                _buildTabEveryOneWatching(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String text) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTabContent(Color bgColor, Color textColor, String iconPath, String labelText) {
    return Container(
      width: deviceWidth,
      color: bgColor,
      child: Row(
        children: [
          SizedBox(width: deviceWidth * 0.02),
          Image.asset(iconPath, width: 22),
          Flexible(
            child: Text(
              labelText,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
Widget _buildTabCommingSoon() {
  return ListView.builder(
    itemCount: 10,
      itemBuilder: (BuildContext context ,index){
    return CommingSoon();
  });
}
Widget _buildTabEveryOneWatching() {
  return Container(
    color: Colors.red,
    child: Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: deviceWidth*0.2,
            height: deviceHeight,
            color: Colors.black,
          ),
        )
      ],
    ),
  );
}
