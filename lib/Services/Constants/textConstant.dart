import 'package:app_/Services/Constants/fontsConstant.dart';
import 'package:flutter/material.dart';

class TextConstant {
  text_Funct(text) {
   return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: FontsConstants.sub_heading_font_size,
          fontFamily: FontsConstants.sub_heading_font_family,
        ),
      ),
    );
  }
}
