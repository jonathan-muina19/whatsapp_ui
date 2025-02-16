import 'package:flutter/material.dart';
import 'package:whattsap_ui/pages/profile/profile_page.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

// ignore: must_be_immutable
class OtpPage extends StatelessWidget {

  String telephone;
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  TextEditingController otpController5 = TextEditingController();
  TextEditingController otpController6 = TextEditingController();
  OtpPage({super.key, required this.telephone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: 'Verifier votre numero', 
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            
            ),
            SizedBox(height: 30),
            // ignore: unnecessary_brace_in_string_interps
            UiHelper.customText(
              text: "You've tried to register +243 ${telephone}", 
              height: 15
            ),

             UiHelper.customText(
              text: "recently. Wait before requesting an sms or a call.", 
              height: 15
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                UiHelper.customText(
                  text: 'with your code. ', 
                  height: 15
                ),
               GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: UiHelper.customText(
                    text: "Wrong number?", 
                    height: 15,
                    color: Color(0XFF00A884),
                    fontweight: FontWeight.bold
                ),
               )
                
              ],
             ),
             SizedBox(height: 30),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customContainer(
                  otpController1
                ),
                SizedBox(width: 10),
                UiHelper.customContainer(
                  otpController2
                ),
                SizedBox(width: 10),
                UiHelper.customContainer(
                  otpController3
                ),
                SizedBox(width: 10),
                UiHelper.customContainer(
                  otpController4
                ),
                SizedBox(width: 10),
                UiHelper.customContainer(
                  otpController5
                ),
                SizedBox(width: 10),
                UiHelper.customContainer(
                  otpController6
                )
              ],
             ),
             SizedBox(height: 30),
             UiHelper.customText(
              text: "Dind't receive code?",
              height: 14,
              color: Color(0XFF00A884)
            )
            
          ],
          
        ),
        
      ),
      floatingActionButton: UiHelper.customButton(
        callback: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
        }, 
        buttonname: 'Suivant'
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  
  }
}