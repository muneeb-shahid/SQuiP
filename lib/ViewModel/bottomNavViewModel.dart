import 'package:app_/View/startingView.dart';
import 'package:app_/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../Services/gesturedetector.dart';
import '../../app/app.locator.dart';

class BottomNavViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  //  navigateToTheFireBridage() {
  //   navigationService.navigateToFireBridageView();
  // }

  // int currentindex = 0;
  // final screens = [
  //   Center(child: StartingView()),
  //   Center(
  //     child: Text("Favorite"),
  //   ),
  //   Center(child: Text("Shopping")),
  //   Center(child: Text("User")),
  // ];
  // bottomNav() {
  //   backgroundColor:
  //   Colors.red;
  //   body:
  //   screens[currentindex];
  //   bottomNavigationBar:
  //   BottomNavigationBar(
  //       elevation: 5,
  //       type: BottomNavigationBarType.fixed,
  //       backgroundColor: Colors.white,
  //       selectedItemColor: Colors.black,
  //       showUnselectedLabels: false,
  //       currentIndex: currentindex,
  //       // onTap: (index) => setState(() {
  //       //       currentindex = index;
  //       //     }),
  //       onTap: (index) {
  //         currentindex = index;
  //         rebuildUi();
  //       },
  //       items: [
  //         BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.home_outlined,
  //             color: Colors.black,
  //           ),
  //           label: "Home",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.favorite_border_outlined,
  //             color: Colors.black,
  //           ),
  //           label: "Favorite",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.shopping_bag_outlined,
  //             color: Colors.black,
  //           ),
  //           label: "Shopping",
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.person_2_outlined,
  //             color: Colors.black,
  //           ),
  //           label: "User",
  //         ),
  //       ]);
  // }
  // final gesture_Button = Gesture_Button();

  // gest() {
  //   gesture_Button.gestureButton_function;
  // }

  // navigateToThePolice() {
  //   navigationService.navigateToPoliceView();
  // }

  // navigateToTheAmbulance() {
  //   navigationService.navigateToAmbulanceView();
  // }

  // navigateToTheFireBridage() {
  //   navigationService.navigateToFireBridageView();
  // }
}
