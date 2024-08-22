import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';

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
            SizedBox(
              height: 100,
            ),
            // === Use Stack to overlay images ===
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/Illustartion.png'),
                Image.asset('assets/images/donut.png'),
              ],
            ),
            SizedBox(height: 50), // Add some space between the image and text

            // === Text without space between them ===
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Take your comfort',
                    style: TextStyle(
                      color: AppColors.headingColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                    // Padding(padding: EdgeInsets.only(left: 100)),
                    SizedBox(width: 50,),

                  Text(
                    'Food here',
                    style: TextStyle(
                      color: AppColors.headingColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
