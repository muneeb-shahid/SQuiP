import 'dart:ffi';

import 'package:app_/app/app.router.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import 'Constants/constantsColors.dart';
import 'Constants/fontsConstant.dart';

class Gesture_Button {
  
  gestureButton_function(context,String text, navigate) {
    return GestureDetector(
      onTap: () {
        navigate;
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: App_Colors.app_green_color,
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                letterSpacing: 1,
                wordSpacing: 1,
                fontFamily: FontsConstants.heading_font_family,
                fontSize: FontsConstants.sub_heading_font_size,
                fontWeight: FontsConstants.font_weight,
                color: App_Colors.app_white_color),
          )),
        ),
      ),
    );
  }
}
