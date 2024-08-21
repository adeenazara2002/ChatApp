import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         child: Container(
          width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppColors.splashColor,
            child:Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/')
                  ],
                )
              ],
            ) ,
         ),
      )   
       );
  }
}