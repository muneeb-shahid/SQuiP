import 'package:app_/Services/Constants/appBarConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../../ViewModel/AdminModeViewModel/adminModeViewModel.dart';



class AdminMode extends StatelessWidget {
  const AdminMode({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => Admin_Mode_ViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar_Constants().appBar_Func("Admin Mode")
        );
      },
    );
  }
}
