import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/globel_variable.dart';
import 'package:netflix_app/core/pallet.dart';
import 'package:netflix_app/presentation/home/widget/background_card.dart';
import 'package:netflix_app/presentation/home/widget/number_card.dart';
import 'package:netflix_app/widgets/main_title.dart';
import '../../widgets/main_titlecard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ValueListenableBuilder(valueListenable: scrollNotifier,
          builder:(BuildContext context,index,_){
        return  NotificationListener<UserScrollNotification>(
          onNotification: (notification)
          {
            final ScrollDirection direction = notification.direction;
            if(direction == ScrollDirection.reverse){
              scrollNotifier.value = false;
            }else if(direction == ScrollDirection.forward){
              scrollNotifier.value =true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: [
                  Column(
                    children: [
                      const Backgroundcard(),
                      const MainTitleCard(title: "Released in the Past Year"),
                      const MainTitleCard(title: "Trending Now"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const MainTitle(title: "Top 10 TV Shows In India Today"),
                          SizedBox(height: deviceHeight * 0.01),
                          LimitedBox(
                            maxHeight: deviceHeight * 0.25,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                10,
                                    (index) => Padding(
                                  padding: EdgeInsets.only(right: 12.0),
                                  child: NumberCard(
                                    index: index,
                                  ),
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
                ],
              ),
              scrollNotifier.value == true ?
              AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                child: Container(
                  width: double.infinity,
                  height: deviceHeight*0.1,
                  color: Colors.black12,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/img/netflixlogo.png',
                            width: deviceWidth*0.2,),
                          Spacer(),
                          Icon(
                            Icons.cast,
                            color: Colors.white,size: 28,
                          ),
                          SizedBox(width: 10,),
                          Container(
                            color: pallete.indicatorColor,
                            width: deviceWidth*0.07,
                            height: deviceHeight*0.04,
                          ),
                          SizedBox(width: 10,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Tv Show",style: TextStyle
                            (color: Colors.white,
                              fontWeight: FontWeight.bold),
                          ),
                          Text(
                              "Movies",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Categories",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
              ):
                  SizedBox(height: 0.02,)
            ],
          ),
        );
      } )
    );
  }
}
