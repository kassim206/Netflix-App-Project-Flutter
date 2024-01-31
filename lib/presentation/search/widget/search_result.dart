import 'package:flutter/cupertino.dart';
import 'package:netflix_app/presentation/search/widget/search_titile.dart';

import '../../../core/globel_variable.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitile(titile: 'Movies & TV'),
        SizedBox(height: deviceHeight*0.01,),
        Expanded(child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1/1.4,
            crossAxisCount: 3,
        children:
          List.generate(20, (index) {
          return MiniCard();
          },
          ),
        )
        ),
      ],
    );
  }
}
class MiniCard extends StatelessWidget {
  const MiniCard({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/img/netdow3.jpg'),
            fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
