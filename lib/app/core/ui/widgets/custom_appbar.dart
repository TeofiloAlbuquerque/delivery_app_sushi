import 'package:flutter/material.dart';

class CustomAppbar extends AppBar {
  CustomAppbar({
    super.key,
    double elevation = 0,
  }) : super(
          elevation: elevation,
          title: Image.asset(
            'assets/images/logo_calanguinho_sushi.png',
            width: 67,
          ),
        );
}
