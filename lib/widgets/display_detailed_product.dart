import 'package:flutter/material.dart';

class DisplayDetailedProduct extends StatelessWidget {
  const DisplayDetailedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Stack(
        children: [
          const Image(
            image: AssetImage(
              'assets/images/background2.png',
            ),
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: Image(
              image: AssetImage(
                'assets/images/backpack3.png',
              ),
              height: 250,
              width: 308,
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 28,
                      width: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xffF7B604),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          'SALE',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff213960),
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 160, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Backpack\nTetra Navy',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff1A3365),
                        fontWeight: FontWeight.w500,
                        fontSize: 26,
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/ratings.png'),
                      height: 28,
                      width: 100,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
