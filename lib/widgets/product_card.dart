import 'package:detailed_product/pages/product_detailed_page.dart';
import 'package:detailed_product/utils/text_style.dart';
import 'package:flutter/material.dart';

class MyProductCard extends StatelessWidget {
  final bool showSale;
  final String img;
  final String price;

  const MyProductCard({
    Key? key,
    this.showSale = false,
    required this.img,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const ProductDetailedPage();
            }),
          );
        },
        child: Container(
          height: 170,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: const LinearGradient(
              colors: [
                Color(0xffffffff),
                Color(0xff000000),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.dstATop),
              image: AssetImage(img),
            ),
          ),
          child: Stack(
            children: [
              if (showSale) // Show sale container only if showSale is true
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 28,
                    width: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xffF7B604),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'SALE',
                        style: MyText.style1,
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'RP.',
                        style: MyText.medium,
                      ),
                      const SizedBox(height: 3),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          price,
                          style: MyText.heading,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
