import 'package:flutter/material.dart';
import 'package:whattsap_ui/pages/home/home_page.dart';
import 'package:whattsap_ui/pages/login/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0XFF00A884)
          ),
          useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      home:   HomePage(),
       routes: {
        '/loginpage' : (context) => LoginPage(),
        '/homepage' : (context) => HomePage(),
      },
    );
    
  }
}