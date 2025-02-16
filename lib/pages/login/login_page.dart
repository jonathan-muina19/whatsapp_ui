import 'package:flutter/material.dart';
import 'package:whattsap_ui/pages/otp/otp_page.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController phoneController = TextEditingController();
  //const LoginPage({super.key});
  String selectedCountry = 'RDC';

  List<String> countries = [
    'RDC',
    'CANADA',
    'USA',
    'LUXEMBOURG'
  ];

  // Cette methode verifier si vous avez entrer un numero de telephone, 
  // Avant de passer a la page OTP number.
  login(String pohneNumber){
    if(pohneNumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Entrez votre numero de telephone')));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpPage(telephone: pohneNumber)));
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [
        SizedBox(height: 60),
        Center(
          child: UiHelper.customText(
            text: 'Saisissez votre numero de telephone', 
            height: 20,
            fontweight: FontWeight.bold,
            color: Color(0XFF00A884)
            ),
        ),
        SizedBox(height: 30),
        UiHelper.customText(
          text: 'WhatsApp devra verifier votre numero', 
          height: 15
        ),
        UiHelper.customText(
          text: "telephone. Des frais peuvent s'appliquer selon", 
          height: 15
        ),
        UiHelper.customText(
          text: "Quel est votre numero?", 
          height: 15,
          color: Color(0XFF00A884)
        ),

        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: DropdownButtonFormField(
            
            items: countries.map((String country){
              return DropdownMenuItem(
                value: country,
                child: Text(country.toString()));
            }).toList(),
             
            onChanged: (newvalue){
              setState(() {
                selectedCountry=newvalue!;
              }); 
            },
            value:  selectedCountry,
            decoration: InputDecoration(
              //labelText: 'Choisissez un pays',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))
              ),
              focusedBorder:UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '+243',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                ),
              ),
            ),
           SizedBox(width: 10),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller:phoneController ,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))
                    ),
                ),
              ),
            )
          ],
        )

      ],
     ),
     floatingActionButton: UiHelper.customButton(
      callback: (){
        login(phoneController.text.toString());
      },
      buttonname: 'Suivant'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
    
  }

}