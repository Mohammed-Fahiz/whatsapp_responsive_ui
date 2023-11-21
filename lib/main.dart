import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Responsive/responsive.dart';
import 'package:whatsapp_clone_ui/Screens/mobile_screen.dart';
import 'package:whatsapp_clone_ui/Screens/web_screen.dart';
import 'package:whatsapp_clone_ui/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const Responsive(
        mobileScreenLayout: MobileScreen(),
        webScreenLayout: WebScreen(),
      ),
    );
  }
}
