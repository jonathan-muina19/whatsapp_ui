import 'package:flutter/material.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

// ignore: must_be_immutable
class AppelsPage extends StatelessWidget {
  AppelsPage({super.key});

  var contentCalls = [
    {
      "name": "Baby Boo (10)",
      "time":"il y a une minute",
      "images":"assets/images/image_11.jpg",
      "status" : "sortant"
      
    },

    {
      "name": "Joanthan",
      "time" : "Aujourd'hui, 06:50",
      "images" : "assets/images/jo.jpg",
      "status" : "manque"
    },

    {
      "name": "Kevin (2)",
      "time" : "Aujourd'hui, 16:00",
      "images" : "assets/images/kev.jpg",
      "status" : "manque"
    },

    {
      "name": "Mboma",
      "time" : "Aujourd'hui, 16:00",
      "images" : "assets/images/jho.jpg",
      "status" : "sortant"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [ 
              SizedBox(width: 20),
            UiHelper.customText(
              text: 'Recents', 
              height: 18,
              color: Colors.black,
              fontweight: FontWeight.bold
          )
            ],
          ),
          SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(contentCalls[index]['images'].toString()),
                ),
                title: UiHelper.customText(
                  text: contentCalls[index]['name'].toString(), 
                  height: 15,
                  fontweight: FontWeight.bold,
                  color: Colors.black
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      color: contentCalls[index]['status'] == "manque"?
                      Colors.red : Color(0XFF00A884),
                      contentCalls[index]['status'] == "manque" ?
                      Icons.call_received :Icons.call_made, 
                    ), // Ajoutez l'icône ici
                    SizedBox(width: 5), // Ajoutez un espace entre l'icône et le texte
                    UiHelper.customText(
                      text: contentCalls[index]['time'].toString(),
                      height: 15,
                    ),
                  ],
                ),
                
                trailing: IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                    contentCalls[index]['status'] == "manque" ?
                    Icons.videocam_outlined : Icons.call_outlined,
                    color: contentCalls[index]['status'] == "manque" ?
                    Colors.red :  Color(0XFF00A884),
                    size: 25
                  )
                )
              );
            },
            itemCount: contentCalls.length,
          ),
        )
        ],
      ),
    );
  }
}