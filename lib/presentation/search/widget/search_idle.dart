import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/globel_variable.dart';
import 'package:netflix_app/presentation/search/widget/search_titile.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitile(titile: 'Top Searches'),
        SizedBox(height: deviceHeight*0.01,),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context,index)=>TopSearchItems(),
              separatorBuilder: (context,index)=>SizedBox(height: deviceHeight*0.03,),
              itemCount: 10),
        )
      ],
    );
  }
}
class TopSearchItems extends StatelessWidget {
  const TopSearchItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: deviceWidth*0.39,
          height: deviceHeight*0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage('assets/img/netdow1.jpg'),fit: BoxFit.cover)
          ),
        ),
        Expanded(child: Text('Movie Names')),
        CircleAvatar(
          child: Image.asset('assets/icons/playbutton.png',fit: BoxFit.cover,),
        )
      ],
    );
  }
}
