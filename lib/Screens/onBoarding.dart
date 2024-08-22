import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.screenColor,
        child: Column(
          children: [
                SizedBox(height: 100,),

            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/Illustartion.png'),
                Image.asset('assets/images/donut.png')
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}