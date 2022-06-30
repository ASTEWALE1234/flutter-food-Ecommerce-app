import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  IconData icon;
  String label;
  double? size;
  Color? color;
  IconPage(
      {Key? key,
      required this.icon,
      required this.label,
      this.size,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: size,
          color: color,
        ),
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 12, color: Colors.grey[300]),
        )
      ],
    );
  }
}
