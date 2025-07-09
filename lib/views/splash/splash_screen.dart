import 'package:flutter/material.dart';

import 'package:state_management/data/exceptions/app_exceptions.dart';
import 'package:state_management/services/splash/splash_services.dart';

import '../../config/components/internet_exception_widget.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices _splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServices.isLogin(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Splash Screen', style: TextStyle(fontSize: 50),)),
      
    );
  }
}
