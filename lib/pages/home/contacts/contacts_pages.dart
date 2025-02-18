import 'package:flutter/material.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

// ignore: must_be_immutable
class ContactsPages extends StatelessWidget {
  ContactsPages({super.key});

  var contentContacts = [
    {
      "name" : "Maman",
      "status" : "Disponible",
      "image" : "assets/images/Ellipse 75.png"

    },

    {
      "name" : "Papa",
      "status" : "Salut j'utilise WhatsApp",
      "image" : "assets/images/avatar.jpg"
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          text: 'Contacts', 
          height: 15,
          color: Colors.white
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert_outlined)
        ],
      ),
      
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    
                    backgroundImage: AssetImage(contentContacts[index]['image'].toString()),
                  ),
                  title: UiHelper.customText(
                    text: contentContacts[index]['name'].toString(), 
                    height: 16,
                    fontweight: FontWeight.bold,
                    color: Colors.black
                  ),
                  subtitle: UiHelper.customText(
                    text: contentContacts[index]['status'].toString(), 
                    height: 12),
                );
              },
              itemCount: contentContacts.length,
              ),
          ),
        ],
      ),
    );
  }
}