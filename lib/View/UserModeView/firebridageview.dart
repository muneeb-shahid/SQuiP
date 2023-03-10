

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../Services/Constants/appBarConstant.dart';
import '../../Services/Constants/textConstant.dart';
import '../../ViewModel/UserModeViewModel/firebridageViewModel.dart';

class FireBridageView extends StatelessWidget {
  const FireBridageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => FireBridageViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar_Constants().appBar_Func("Fire Bridage Services"),
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
                      // viewModel.navigateToTheFireBridageView();
                    },
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
                      // viewModel.navigateToTheFireBridageView();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Cylinder Blast",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      // viewModel.navigateToTheFireBridageView();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Short Circuit",
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
