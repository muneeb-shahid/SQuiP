import 'package:app_/View/startingView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../Services/gesturedetector.dart';
import '../View/AdminModeView/adminModeView.dart';
import '../View/UserModeView/userView.dart';
import '../View/adminView.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartingView, initial: true),

  MaterialRoute(page: UserMode,),
  MaterialRoute(page: AdminMode,),

  // MaterialRoute(page: AdminView,),
  // MaterialRoute(page: AdminMode,),


], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: Gesture_Button),
  

])
class App {}