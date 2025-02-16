import 'package:flutter/material.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image 1.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.customText(
                text: 'Bienvenue sur WhatsApp',
                height: 27,
                fontweight: FontWeight.normal,
                color: Colors.black),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: 'Read out',
                  height: 14,
                  fontweight: FontWeight.normal,
                ),
                UiHelper.customText(
                    text: ' Privacy Policy',
                    height: 14,
                    fontweight: FontWeight.normal,
                    color: Color(0XFF0C42CC)),
                UiHelper.customText(
                  text: " Tap 'Agree and continue' ",
                  height: 14,
                  fontweight: FontWeight.normal,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: 'to accept the ',
                  height: 14,
                  fontweight: FontWeight.normal,
                ),
                UiHelper.customText(
                  text: 'Teams of service',
                  height: 14,
                  fontweight: FontWeight.normal,
                  color: const Color(0XFF0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
          callback: () {
            Navigator.pushNamed(context, '/loginpage');
          },
          buttonname: 'Accepter et continuer'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
