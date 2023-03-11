import 'package:app_/View/AdminModeView/adminModeView.dart';
import 'package:app_/View/UserModeView/userView.dart';
import 'package:flutter/material.dart';

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
    Center(child: Text("Screen 3")),
    Center(child: Text("Screen 4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 5,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            showUnselectedLabels: false,
            currentIndex: currentindex,
            onTap: (index) => setState(() {
                  currentindex = index;
                }),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                ),
                label: "Map",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.black,
                ),
                label: "User",
              ),
            ]));
  }
}
