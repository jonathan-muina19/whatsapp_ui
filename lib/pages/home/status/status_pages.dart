import 'package:flutter/material.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

// ignore: must_be_immutable
class StatusPages extends StatelessWidget {
  //StatusPages({super.key});

  var contentStatus = [
    {
      "images": "assets/images/image_12.webp",
      "name": "Bob",
      "time": "il y a 50 minutes",
    },

    {
      "images": "assets/images/image_13.jpeg",
      "name": "Baby Boo", 
      "time": "Hier", 
      
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
                  text: 'Status',
                  height: 17,
                  fontweight: FontWeight.bold,
                  color: Colors.black)
            ],
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 2, 92, 72),
                    radius: 10,
                    child: Center(
                      child:
                          Icon(Icons.add, color: Color(0XFFFFFFFF), size: 15),
                    ),
                  ),
                )
              ]),
            ),
            title: UiHelper.customText(text: 'My status', height: 20),
            subtitle: UiHelper.customText(
                text: 'Tap to add status update', height: 13),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customText(
                  text: 'Update recents', height: 15, color: Colors.black),
                  SizedBox(width: 200),
                  //Icon(Icons.arrow_drop_down)
            ],
          ),
          SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            contentStatus[index]['images'].toString()),
                      ),
                      title: UiHelper.customText(
                          text: contentStatus[index]['name'].toString(),
                          height: 15,
                          fontweight: FontWeight.bold,
                          color: Colors.black
                        ),
                      subtitle: UiHelper.customText(
                          text: contentStatus[index]['time'].toString(),
                          height: 15
                        ),
                    );
                    
                  },
                  itemCount: contentStatus.length,
                )
              )
        ],
      ),
    );
  }
}
