import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../../Services/Constants/appBarConstant.dart';
import '../../Services/Constants/fontsConstant.dart';
import '../../ViewModel/UserModeViewModel/userViewModel.dart';

class UserMode extends StatelessWidget {
  const UserMode({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => UserViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar_Constants().appBar_Func("User Mode"),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Select which types of services do you want?",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: FontsConstants.sub_heading_font_size,
                        fontFamily: FontsConstants.sub_heading_font_family,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToTheUserMode();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Police",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToTheUserMode();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Ambulance",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToTheUserMode();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Fire Brigade",
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
