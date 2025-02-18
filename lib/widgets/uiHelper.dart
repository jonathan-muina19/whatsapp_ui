// ignore: file_names
import 'package:flutter/material.dart';

class UiHelper{

  // Cette meth0de c'est pour customiser le button
  static customButton({required VoidCallback callback, required String buttonname }){
    
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          )
        ),
        onPressed: (){
          callback();
        }, 
        child: Text(buttonname, style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 17,
          color: Colors.white
        ),
        )
      ),

    );
  }
  // Cette methode c'est pour customiser les textes
  static customText({required String text, required double height, Color? color, FontWeight? fontweight}){
    return Text(
      text,
      style: TextStyle(
        //fontFamily: 'Regular',
        fontSize: height,
        color: color ?? Color(0XFF5E5E5E),
        fontWeight: fontweight
      ),
    );
  }

  static customContainer(TextEditingController controller){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFD9D9D9)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            
          ),
        ),
      ),
    );
  }
}

