import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whattsap_ui/pages/onBoardingPage/onboarding_page.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnboardingPage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp 1.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.customText(
              text: 'WhatsApp', 
              height: 18, 
              fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}