import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chatapp/Screens/chatDetails.dart';
import 'package:chatapp/Screens/message.dart';
import 'package:chatapp/Screens/signIn.dart';
import 'package:chatapp/Screens/signUp.dart';
import 'package:chatapp/Screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => SignIn(),
        '/home': (context) => Message(),
      },
      );
  }
}
