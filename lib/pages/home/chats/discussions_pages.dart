import 'package:flutter/material.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

// ignore: must_be_immutable
class DiscussionsPages extends StatelessWidget {
  DiscussionsPages({super.key});

  var arrContent = [
    {
      "images" : "assets/images/image_11.jpg",
      "name" : "Alice",
      "lstMsg" : "Bonjour , comment?",
      "time" : "22h30",
      "nbrMsg" : "3"
    },

    {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
    
    {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
    
    {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
    
    {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
      {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
      {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
      {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
      {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
      {
      "images" : "assets/images/image_12.webp",
      "name" : "Bob",
      "lstMsg" : "Coucou",
      "time" : "12h30",
      "nbrMsg" : "1"
    },

    {
      "images" : "assets/images/image_13.jpeg",
      "name" : "Fortune",
      "lstMsg" : "Quelles sont les nouuvelles",
      "time" : "18h00",
      "nbrMsg" : "7"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(arrContent[index]['images'].toString()),
                  ),
                  title: UiHelper.customText(
                    text: arrContent[index]['name'].toString(), 
                    height: 15,
                    fontweight: FontWeight.bold
                  ),
                  subtitle: UiHelper.customText(
                    text: arrContent[index]['lstMsg'].toString(), 
                    height: 13,
                    color: Color(0XFF889095)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.customText(
                          text: arrContent[index]['time'].toString(), 
                          height: 12,
                          color: Color(0XFF00A884),
                          fontweight: FontWeight.bold
                        ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0XFF00A884),
                        child: UiHelper.customText(
                          text: arrContent[index]['nbrMsg'].toString(), 
                          height: 12,
                          color: Colors.white,
                          fontweight: FontWeight.bold
                        ),
                      )
                      ],
                    ),
                );
              },itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: Color(0XFF00A884),
        radius: 30,
        child: Image.asset('assets/images/msg_icon.png'),
        
      ),
      
    );
  }
}