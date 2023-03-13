import 'package:app_/View/startingView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Services/gesturedetector.dart';
import '../Services/notificationService.dart';
import '../View/AdminModeView/Adminloginview.dart';
import '../View/SplashView.dart';
import '../View/UserModeView/ambulanceView.dart';
import '../View/UserModeView/firebridageview.dart';
import '../View/UserModeView/googlemap.dart';
import '../View/UserModeView/loginView.dart';
import '../View/UserModeView/notification.dart';
import '../View/UserModeView/policeview.dart';
import '../View/UserModeView/signupview.dart';
import '../View/UserModeView/userView.dart';
import '../View/AdminModeView/adminView.dart';
import '../View/bottomNavView.dart';
import '../ViewModel/UserModeViewModel/UserloginViewmodel.dart';
@StackedApp(routes: [
  MaterialRoute(page: SplashView,initial: true),
  MaterialRoute(page: CurrentLocationScreen),
  MaterialRoute(page: UserLoginView),
  MaterialRoute(page: SignUpPage),
  MaterialRoute(page: BottomNav),
  MaterialRoute(page: StartingView, ),
  MaterialRoute(page: UserMode,),
  MaterialRoute(page: AdminLoginView,),
  MaterialRoute(page: PoliceView),
  MaterialRoute(page: AdminView),
  MaterialRoute(page: AmbulanceView),
  MaterialRoute(page: FireBridageView),
  MaterialRoute(page: ShowNotification),




], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: Gesture_Button),
  LazySingleton(classType: Notification_Service),
  

])
class App {}
