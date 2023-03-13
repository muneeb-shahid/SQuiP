import 'package:app_/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../View/bottomNavView.dart';
import '../../app/app.locator.dart';

class UserLoginViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  navigateToTheBottomNav() {
    navigationService.navigateToBottomNav();
  }
}
