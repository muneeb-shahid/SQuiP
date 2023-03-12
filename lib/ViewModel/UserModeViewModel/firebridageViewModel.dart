import 'package:app_/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../Services/gesturedetector.dart';
import '../../Services/notificationService.dart';
import '../../app/app.locator.dart';

class FireBridageViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final gesture_Button = Gesture_Button();
  final show_navigation = locator<Notification_Service>();

  showNotificationOnScreen() {
    show_navigation.showNotification();
  }

  gest() {
    gesture_Button.gestureButton_function;
  }

  // navigateToTheUserMode() {
  //   navigationService.navigateToUserMode();
  // }

  // navigateToTheAdminMode() {
  //   navigationService.navigateToAdminMode();
  // }
}
