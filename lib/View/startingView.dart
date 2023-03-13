import 'package:app_/app/app.dart';
import 'package:app_/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Services/Constants/appBarConstant.dart';
import '../Services/Constants/constantsColors.dart';
import '../Services/Constants/fontsConstant.dart';
import '../Services/Constants/textConstant.dart';
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
          appBar:  AppBar_Constants().appBar_Func("Public Helping Center"),
          
         
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   TextConstant().text_Funct( "Please select your mode below.",),
                  
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),

                  InkWell(
                    onTap: () {
                      viewModel.navigateToTheLoginScreen();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "User Mode",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToTheAdminMode();
                      //  viewModel.navigateToTheLoginScreen();
                    },
                    child: viewModel.gesture_Button.gestureButton_function(
                      context,
                      "Admin Mode",
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
