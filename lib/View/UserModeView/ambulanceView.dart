
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../Services/Constants/appBarConstant.dart';
import '../../Services/Constants/textConstant.dart';
import '../../ViewModel/UserModeViewModel/ambulanceViewModel.dart';

class AmbulanceView extends StatelessWidget {
  const AmbulanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AmbulanceViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar_Constants().appBar_Func("Ambulance Services"),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextConstant().text_Funct(
                    "Select your emergency level",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
 viewModel.showNotificationOnScreen();                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Medical Emergency",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
 viewModel.showNotificationOnScreen();                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Fire",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
 viewModel.showNotificationOnScreen();                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Accident",
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
