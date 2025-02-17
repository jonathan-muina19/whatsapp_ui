import 'package:flutter/material.dart';
import 'package:whattsap_ui/pages/home/appels/appels_page.dart';
import 'package:whattsap_ui/pages/home/camera_page/camera_page.dart';
import 'package:whattsap_ui/pages/home/chats/discussions_pages.dart';
import 'package:whattsap_ui/pages/home/status/status_pages.dart';
import 'package:whattsap_ui/widgets/uiHelper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'APPELS'),
            ],
          ),
          toolbarHeight: 100,
          title: UiHelper.customText(text: 'WhatsApp', height: 20, color: Colors.white),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                },
                icon: Image.asset('assets/images/Search.png', width: 20, height: 20),
              ),
            )
          ],
        ),
        body:TabBarView(
          children: [
            CameraPage(),
            DiscussionsPages(),
            StatusPages(),
            AppelsPage(),
          ])
      ),
    );
  }
}