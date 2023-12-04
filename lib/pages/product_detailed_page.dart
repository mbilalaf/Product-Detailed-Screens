import 'package:detailed_product/utils/colors.dart';
import 'package:detailed_product/utils/text_style.dart';
import 'package:detailed_product/widgets/buttons.dart';
import 'package:detailed_product/widgets/display_detailed_product.dart';
import 'package:detailed_product/widgets/my_app-bar.dart';
import 'package:detailed_product/widgets/reviews.dart';
import 'package:flutter/material.dart';

class ProductDetailedPage extends StatelessWidget {
  const ProductDetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shadowColor: Colors.transparent,
        title: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DisplayDetailedProduct(),
            const SizedBox(height: 10),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Text(
                        'Tetra Backpack, which has a mix of urban and nature designs, has three color choices.',
                        textAlign: TextAlign.center,
                        style: MyText.large,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Specifikasi',
                        style: MyText.heading.copyWith(
                          color: navyBlue,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Dimension: H: 47,5 x W: 31 x D: 15 cm\nCapacity: 22 L\nWeight: 0,6 Kg',
                        textAlign: TextAlign.center,
                        style: MyText.large,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Reviews(),
                const MyButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
