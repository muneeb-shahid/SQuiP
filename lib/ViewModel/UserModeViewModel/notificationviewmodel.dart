import 'package:stacked/stacked.dart';

import '../../Services/notificationService.dart';
import '../../app/app.locator.dart';

class ShowNotificationModel extends BaseViewModel{
final show_navigation = locator<Notification_Service>();



showNotificationOnScreen() {
     show_navigation.showNotification();
  }
}