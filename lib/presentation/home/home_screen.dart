import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/globel_variable.dart';
import 'package:netflix_app/core/pallet.dart';
import 'package:netflix_app/presentation/home/widget/number_card.dart';
import 'package:netflix_app/widgets/main_title.dart';

import '../../widgets/main_card.dart';
import '../../widgets/main_titlecard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MainTitleCard(title: "Released in the Past Year"),
              const MainTitleCard(title: "Trending Now"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainTitle(title: "Top 10 TV Shows In India Today"),
                  SizedBox(height: deviceHeight * 0.01),
                  LimitedBox(
                    maxHeight: deviceHeight * 0.36,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        10,
                            (index) => const Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: NumberCard(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const MainTitleCard(title: "Tense Dramas"),
              const MainTitleCard(title: "South Indian Cinema"),
            ],
          ),
        ),
      ),
    );
  }
}
