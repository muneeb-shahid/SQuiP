import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app_/Services/Constants/constantsColors.dart';
import 'package:app_/Services/Constants/fontsConstant.dart';
import 'package:app_/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Services/gesturedetector.dart';
import '../app/app.locator.dart';

class SplashViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final gesture_Button = Gesture_Button();
  gest() {
    gesture_Button.gestureButton_function;
  }

  navigateToTheStartingView() {
    navigationService.navigateToStartingView();
  }

  Widget typeAnimation() {
    return DefaultTextStyle(
      style: TextStyle(
          fontSize: 18,
          color: App_Colors.app_black_color,
          fontFamily: FontsConstants.heading_font_family),
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText('Take the help of Police, Ambulance and',
              speed: Duration(milliseconds: 70)),
          TyperAnimatedText('Fire brigade within a few seconds.',
              speed: Duration(milliseconds: 70)),
        ],
        repeatForever: true,
      ),
    );
  }
}
