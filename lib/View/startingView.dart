import 'package:app_/app/app.dart';
import 'package:app_/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Services/Constants/constantsColors.dart';
import '../Services/Constants/fontsConstant.dart';
import '../Services/gesturedetector.dart';
import '../ViewModel/startingViewModel.dart';

class StartingView extends StatelessWidget {
  const StartingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => StartingViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: App_Colors.app_green_color,
            title: Text(
              "Public Helping Center",
              style: TextStyle(
                  wordSpacing: 1,
                  letterSpacing: 2,
                  fontSize: FontsConstants.heading_font_size,
                  fontWeight: FontsConstants.font_weight,
                  fontFamily: FontsConstants.heading_font_family),
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Please Select your Mode below.",
                    style: TextStyle(
                      fontSize: FontsConstants.sub_heading_font_size,
                      fontFamily: FontsConstants.sub_heading_font_family,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  viewModel.gesture_Button.gestureButton_function(
                      context, "User Mode", viewModel.navigateTo()),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  // viewModel.gesture_Button.gestureButton_function(
                  //     context,
                  //     "Admin Mode",
                  //     viewModel.navigateToAdminMode()),
                
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
