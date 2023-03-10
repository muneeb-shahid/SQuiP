import 'package:flutter/material.dart';

import 'constantsColors.dart';
import 'fontsConstant.dart';

class AppBar_Constants {
  appBar_Func(String text) {
    return AppBar(
      centerTitle: true,
      backgroundColor: App_Colors.app_green_color,
      title: Text(
        text,
        style: TextStyle(
            wordSpacing: 1,
            letterSpacing: 2,
            fontSize: FontsConstants.heading_font_size,
            fontWeight: FontsConstants.font_weight,
            fontFamily: FontsConstants.heading_font_family),
      ),
    );
  }
}
