import 'package:chatapp/Screens/onBoarding1.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoard1(),
    );
  }
}