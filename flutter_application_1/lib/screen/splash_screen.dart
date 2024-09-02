import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/onboarding_screen.dart';
import 'package:flutter_application_1/utils/global.color.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnboardingScreen ()),
      );
    });

    return Scaffold(
      backgroundColor:GlobalColors.mainColor,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
                  width: 800, // Sesuaikan lebar sesuai kebutuhan
                  height: 800, // Sesuaikan tinggi sesuai kebutuhan
                  fit: BoxFit.contain), // Tambahkan logo di folder assets
      ),
    );
  }
}
