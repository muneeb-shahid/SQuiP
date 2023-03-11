import 'dart:async';

import 'package:app_/Services/Constants/constantsColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../ViewModel/SplashViewModel.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) {
        Timer(Duration(seconds: 8), () {
          viewModel.navigateToTheStartingView();
        });
      },
      viewModelBuilder: () => SplashViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
            body: SafeArea(
          top: true,
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/hand image.png")),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              viewModel.typeAnimation(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InkWell(
                onTap: () => viewModel.navigateToTheStartingView(),
                child: viewModel.gesture_Button
                    .gestureButton_function(context, "Get Stared"),
              ),
            ],
          ),
        ));
      },
    );
  }
}
