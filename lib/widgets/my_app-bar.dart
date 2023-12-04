// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage(
            'assets/images/menu.png',
          ),
          height: 18,
          width: 18,
        ),
        Image(
          image: AssetImage('assets/images/visval-logo.png'),
          height: 18,
          width: 74,
        ),
        Image(
          image: AssetImage('assets/images/shopingbag.png'),
          height: 22,
          width: 28,
        ),
      ],
    );
  }
}
