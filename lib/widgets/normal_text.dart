import 'package:flutter/material.dart';
import 'package:maneraa/utils/app_theme.dart';

Widget createNormalText(String string,
    {Color color,
    bool boldText = false,
    double size,
    bool truncate = false,
    bool alignRight = false,
    int maxLine = 1}) {
  size = size == null ? AppTheme.fontSizeM : size;
  if (color == null) {
    color = Colors.black;
  }

  TextOverflow overflowStyle = TextOverflow.visible;
  if (truncate) {
    overflowStyle = TextOverflow.ellipsis;
  } else {
    maxLine = 100;
  }

  return Text(
    string,
    overflow: overflowStyle,
    textAlign: alignRight ? TextAlign.right : TextAlign.start,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: boldText ? FontWeight.bold : FontWeight.normal),
    maxLines: maxLine,
  );
}
