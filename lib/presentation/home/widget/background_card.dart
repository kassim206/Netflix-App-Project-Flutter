import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/globel_variable.dart';
import '../../../widgets/custom_buttom.dart';

class Backgroundcard extends StatelessWidget {
  const Backgroundcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: deviceHeight * 0.75,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/himg.webp"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomButton(icon: CupertinoIcons.add, title: 'My List',),
              TextButton.icon(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.white)),
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                ),
                label: const Text(
                  'Play',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const CustomButton(icon: CupertinoIcons.info, title: 'Info',),
            ],
          ),
        )
      ],
    );
  }
}
