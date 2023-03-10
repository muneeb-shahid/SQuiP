import 'package:app_/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Services/Constants/constantsColors.dart';
import '../Services/Constants/fontsConstant.dart';
import '../Services/gesturedetector.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../Services/gesturedetector.dart';
import '../app/app.locator.dart';

class StartingViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final gesture_Button = Gesture_Button();

  gest() {
    gesture_Button.gestureButton_function;
  }

  navigateToUserModde() {
    navigationService.navigateToUserMode();
  }

  navigateToAdminMode() {
    navigationService.navigateToAdminView();
  }
}
