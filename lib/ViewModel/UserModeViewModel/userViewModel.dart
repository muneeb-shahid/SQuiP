import 'package:app_/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../Services/gesturedetector.dart';
import '../../app/app.locator.dart';

class UserViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final gesture_Button = Gesture_Button();

  gest() {
    gesture_Button.gestureButton_function;
  }

  navigateToThePolice() {
    navigationService.navigateToPoliceView();
  }

  navigateToTheAmbulance() {
    navigationService.navigateToAmbulanceView();
  }

  navigateToTheFireBridage() {
    navigationService.navigateToFireBridageView();
  }
}
