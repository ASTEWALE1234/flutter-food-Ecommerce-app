import 'package:ecomerce/app_colors.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color; //remove final to set fefault color
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {Key? key,
      this.color = const Color(
          0xFF332d2b), //AppColor.mainBlackClr, you canot use this form instead of hexadecimal
      required this.text,
      this.size = 20,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
