import 'package:flutter/material.dart';
import 'package:whatsapp_cloneapp/pages/homepage.dart';

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
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        // accentColor: Color(0xff25d366),
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}


