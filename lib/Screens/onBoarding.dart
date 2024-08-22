import 'package:chatapp/Screens/onBoarding2.dart';
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
              height: 60,
            ),
            // === Use Stack to overlay images ===
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/Illustartion.png'),
                Image.asset('assets/images/donut.png'),
              ],
            ),
            SizedBox(height: 5), // Add some space between the image and text

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
                  SizedBox(
                    width: 50,
                  ),

                  Text(
                    'Food here',
                    style: TextStyle(
                      color: AppColors.headingColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),

                  SizedBox(
                    width: 50,
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    'Here you can find a chef or dish for every',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),

                  //  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    'taste and color. Enjoy!',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoard2(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.pinkColor,
                foregroundColor: AppColors.screenColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40),
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                width: 120,
                height: 5,
                decoration: BoxDecoration(
                  color: AppColors.headingColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.headingColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
