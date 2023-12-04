import 'package:detailed_product/utils/colors.dart';
import 'package:flutter/material.dart';

class MyText {
  static final style1 = TextStyle(
    fontSize: 18,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: navyBlue,
  );
  static const heading = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: Color(0xffffffff),
  );
  static const medium = TextStyle(
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    color: Color(0xffF7B604),
  );
  static const popular = TextStyle(
    color: Color(0xff213960),
    fontSize: 26,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static final large = TextStyle(
    fontFamily: 'Poppins',
    color: navyBlue.withOpacity(0.5),
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
}
