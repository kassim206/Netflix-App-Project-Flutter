import 'package:flutter/cupertino.dart';

class SearchTitile extends StatelessWidget {
  const SearchTitile({Key? key,required this.titile}):super(key: key);
final String titile;
  @override
  Widget build(BuildContext context) {
    return  Text(titile,
      style: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),);
  }
}
