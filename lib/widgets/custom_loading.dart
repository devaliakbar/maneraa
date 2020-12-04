import 'package:flutter/material.dart';

class CustomLoading {
  static showPageLoading() {
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

  static showLoading() {
    return new Center(
      child: Container(
        height: 60,
        child: Image.asset(
          'assets/images/loading.gif',
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
