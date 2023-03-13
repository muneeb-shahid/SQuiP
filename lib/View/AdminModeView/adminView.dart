import 'package:app_/Services/Constants/constantsColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../../Services/Constants/appBarConstant.dart';
import '../../Services/Constants/textConstant.dart';
import '../../ViewModel/AdminModeViewModel/adminViewModel.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => AdminViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar_Constants().appBar_Func("Admin Mode"),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextConstant().text_Funct(
                    "Who are you? \nSelect your designation below.",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                       viewModel. navigateToTheLoginScreen();
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
                      viewModel. navigateToTheLoginScreen();
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
                      viewModel. navigateToTheLoginScreen();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Fire Bridage",
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
