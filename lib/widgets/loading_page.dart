import 'package:flutter/material.dart';

showPageLoading() {
  return new Center(
    child: Container(
      height: 90,
      child: Image.asset(
        'assets/images/loading_page.gif',
        fit: BoxFit.scaleDown,
      ),
    ),
  );
}
