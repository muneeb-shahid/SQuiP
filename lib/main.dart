import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'View/SplashView.dart';
import 'View/startingView.dart';
import 'app/app.locator.dart';
import 'app/app.router.dart';
void main() async  {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      title: 'SQuiP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartingView(),
    );
  }
}

