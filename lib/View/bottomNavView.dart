import 'package:app_/View/AdminModeView/adminModeView.dart';
import 'package:app_/View/UserModeView/userView.dart';
import 'package:flutter/material.dart';

import '../Services/Constants/constantsColors.dart';
import 'UserModeView/googlemap.dart';
import 'UserModeView/policeview.dart';
import 'startingView.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;
  final screens = [
    Center(
      child: UserMode(),
      

    ),
    Center(
      child: Text("Screen 2"),
    ),
    Center(child: GoogleMapClass()),
    Center(child: Text("Screen 4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: App_Colors.app_white_color,
        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 5,
            type: BottomNavigationBarType.fixed,
            backgroundColor: App_Colors.app_green_color,
            selectedItemColor: App_Colors.app_white_color,
            showUnselectedLabels: false,
            currentIndex: currentindex,
            onTap: (index) => setState(() {
                  currentindex = index;
                }),
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(
                  Icons.home_outlined,
                  color:App_Colors.app_white_color,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                   activeIcon: Icon(Icons.favorite),
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: App_Colors.app_white_color,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.location_on),
                icon: Icon(
                  Icons.location_on_outlined,
                  color: App_Colors.app_white_color,
                ),
                label: "Map",
              ),
              BottomNavigationBarItem(
                   activeIcon: Icon(Icons.person_2),
                icon: Icon(
                  Icons.person_2_outlined,
                  color: App_Colors.app_white_color,
                ),
                label: "User",
              ),
            ]));
  }
}
