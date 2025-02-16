import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {

  ProfilePage({super.key}); 

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  // Cette methode vous permet d'ouvrir une boite de dialogue
  _openButtom(BuildContext context){
    return showModalBottomSheet(
      context:context,
      builder:(BuildContext context){
        return Container(
          width:200,
          height:200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           IconButton(
            onPressed: (){
              _pickImage(ImageSource.camera);
            }, 
            icon:  Icon(Icons.camera_alt,
              size: 70,
              color: Colors.grey[400],
            )
          ),
            SizedBox(
              width: 30
            ),
            IconButton(
              onPressed: (){
                _pickImage(ImageSource.gallery);
              }, 
              icon: Icon(Icons.image,
            size: 70,
            color: Colors.grey[400],
          )
        )
            ],
          ),
        );
      });
  }

  _pickImage(ImageSource imageSouce) async{
    try{
      final photo = await ImagePicker().pickImage(source: imageSouce);
      if(photo == null) return;
      final image = File(photo.path);
      setState(() {
        pickedImage = image;
      });
    }
    catch(ex){
      print(ex.toString());
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Colors.redAccent,
          
        )
        
      );
      
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: 'Profile info', 
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold
            ),
            SizedBox(height: 30),
          UiHelper.customText(
            text: 'Please provide your name and an optional', 
            height: 15
          ),
          UiHelper.customText(
            text: 'Profile photo', 
            height: 15
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: (){
              _openButtom(context);
            },
            child:pickedImage==null? CircleAvatar(
              radius: 80,
              backgroundColor: Color(0XFFD9D9D9),
              child: Image.asset('assets/images/photo-camera 1.png',
              height: 50,
              fit: BoxFit.cover
            ),
          ):
          CircleAvatar(
            radius: 80,
            backgroundImage: FileImage(pickedImage!),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                //keyboardType: TextInputType.none,
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Type your name here',
                  hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF05AAB2))
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF05AAB2))
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF05AAB2))
                  ),
                ),
              
              ),
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/happy-face 1.png')
          ],
        )

          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        callback: (){}, 
        buttonname: 'Suivant'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
    );
    
  }
}