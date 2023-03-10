import 'package:app_/View/startingView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Services/gesturedetector.dart';
import '../View/AdminModeView/adminModeView.dart';
import '../View/SplashView.dart';
import '../View/UserModeView/ambulanceView.dart';
import '../View/UserModeView/firebridageview.dart';
import '../View/UserModeView/policeview.dart';
import '../View/UserModeView/userView.dart';
import '../View/adminView.dart';
@StackedApp(routes: [
  MaterialRoute(page: SplashView,initial: true),
  MaterialRoute(page: StartingView, ),
  MaterialRoute(page: UserMode,),
  MaterialRoute(page: AdminMode,),
  MaterialRoute(page: PoliceView),
  MaterialRoute(page: AdminView),
  MaterialRoute(page: AmbulanceView),
  MaterialRoute(page: FireBridageView),




], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: Gesture_Button),
  

])
class App {}
