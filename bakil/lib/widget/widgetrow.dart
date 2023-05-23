import 'package:flutter/material.dart';

Row widgetrow({
  required String text,
  IconData? icon,
}) {
  return Row(
    // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [
      Row(
        children: [
          Icon(icon),
          Text('0'),
        ],
      ),
      Text(text),
    ],
  );
}
