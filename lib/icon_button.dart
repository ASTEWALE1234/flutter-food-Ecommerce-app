import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final IconData icon;
  final Color iconClr;
  final double iconSize;
  final Color conClr;
  double size;
  IconButtons(
      {Key? key,
      required this.icon,
      this.iconClr = const Color(0xFF89dad0),
      required this.iconSize,
      this.size = 40,
      required this.conClr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: conClr, borderRadius: BorderRadius.circular(size / 2)),
      child: Icon(
        icon,
        size: iconSize,
        color: iconClr,
      ),
    );
  }
}
