import 'package:flutter/material.dart';

class DisplayProduct extends StatelessWidget {
  const DisplayProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 486,
      decoration: BoxDecoration(
        color: const Color(0xff000000),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.dstATop),
          image: const AssetImage('assets/images/backpack.png'),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VISVAL',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,
                fontSize: 28,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
            Text(
              'Backpack',
              style: TextStyle(
                fontFamily: 'Poppins-Light',
                letterSpacing: 3,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w600,
                fontSize: 42,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
