import 'dart:async'; // Importing dart:async for asynchronous operations

import 'package:flutter/material.dart';

import '../../config/routes/routes_name.dart'; // Importing Flutter material library



/// A class containing services related to the splash screen.
class SplashServices {

  void isLogin(BuildContext context) async {
        Timer(
          const Duration(seconds: 3),
              () => Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route) => false),
        );
      }
  }
