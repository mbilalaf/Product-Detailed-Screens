import 'package:detailed_product/utils/colors.dart';
import 'package:detailed_product/utils/text_style.dart';
import 'package:detailed_product/widgets/display_product.dart';
import 'package:detailed_product/widgets/my_app-bar.dart';
import 'package:detailed_product/widgets/product_card.dart';
import 'package:detailed_product/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const Stack(
            children: [
              MyAppBar(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Stack(
              children: [
                DisplayProduct(),
                MySearchBar(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular',
                        style: MyText.popular,
                      ),
                      Column(
                        children: [
                          Text(
                            '1/10',
                            style: MyText.medium.copyWith(
                              color: navyBlue,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Image(
                            image: AssetImage('assets/images/line.png'),
                            width: 120,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  MyProductCard(
                    img: 'assets/images/bag1.png',
                    price: '263.200',
                  ),
                  SizedBox(width: 20),
                  MyProductCard(
                    img: 'assets/images/bag2.png',
                    price: '224.100',
                    showSale: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DENVER DUFFLE\nBAG NAVY',
                    style: MyText.style1,
                  ),
                  Text(
                    'TOTEBAG\nTETRA NAVY',
                    style: MyText.style1,
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
