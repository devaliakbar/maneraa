import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maneraa/widgets/normal_text.dart';

class Products extends StatelessWidget {
  static const String myRoute = '/products';
  @override
  Widget build(BuildContext context) {
    String passedArgs = ModalRoute.of(context).settings.arguments;
    Map passedArgument = json.decode(passedArgs);

    return Scaffold(
      appBar: AppBar(
        title: NormalText(passedArgument['name']),
      ),
      body: Center(
        child: NormalText(passedArgs),
      ),
    );
  }
}
