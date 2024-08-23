import 'package:chatapp/Screens/signIn.dart';
import 'package:chatapp/Screens/splash.dart';
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
      home: SignIn(),
    );
  }
}