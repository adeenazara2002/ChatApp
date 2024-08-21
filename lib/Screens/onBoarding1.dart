import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
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