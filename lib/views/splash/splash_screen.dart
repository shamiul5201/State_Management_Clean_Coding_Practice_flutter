import 'package:flutter/material.dart';
import 'package:state_management/config/components/loading_widget.dart';
import 'package:state_management/config/components/round_button.dart';
import 'package:state_management/config/routes/routes_name.dart';

import '../../config/components/internet_exception_widget.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InternetExceptionWidget(
                  onPress: (){

                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
