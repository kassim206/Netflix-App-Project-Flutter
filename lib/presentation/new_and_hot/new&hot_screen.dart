import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/new_and_hot/widget/titileshow.dart';

import '../../core/globel_variable.dart';
import '../appbarWidget/widget/appbar_screen.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(deviceHeight * 0.1),
        child: const AppBarWidget(title: "New & Hot"),
      ),
      body: ListView(
        children: [   TitleShow()],
      )
    );
  }
}
