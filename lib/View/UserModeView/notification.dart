import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:stacked/stacked.dart';

import '../../ViewModel/UserModeViewModel/notificationviewmodel.dart';

class ShowNotification extends StatelessWidget {
  const ShowNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ShowNotificationModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
        );
      },
    );
  }
}
