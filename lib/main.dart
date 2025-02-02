import 'package:flutter/material.dart';
import 'package:login_project/bottom_sheet.dart';
import 'package:login_project/calculator.dart';
import 'package:login_project/counter.dart';
import 'package:login_project/list_view.dart';
import 'package:login_project/map_view.dart';
import 'package:login_project/multiple_selection.dart';
import 'package:login_project/notification.dart';
import 'package:login_project/onboarding_view.dart';
import 'package:login_project/reusable_widget.dart';
import 'package:login_project/search.dart';
import 'package:login_project/selection.dart';
import 'package:login_project/slideable.dart';
import 'package:login_project/splash_screen.dart';
import 'package:login_project/stack_view.dart';
import 'package:login_project/switch_view.dart';

import 'dropdown_view.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: MapView(),
    );
  }
}
