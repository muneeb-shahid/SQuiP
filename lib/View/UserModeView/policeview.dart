import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../../Services/Constants/appBarConstant.dart';
import '../../Services/Constants/fontsConstant.dart';
import '../../Services/Constants/textConstant.dart';
import '../../ViewModel/UserModeViewModel/policeviewmodel.dart';

class PoliceView extends StatelessWidget {
  const PoliceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PoliceViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar_Constants().appBar_Func("Police Services"),
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
                       viewModel.showNotificationOnScreen();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Fight/Fire",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.showNotificationOnScreen();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Robbery",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.showNotificationOnScreen();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Harassment",
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
