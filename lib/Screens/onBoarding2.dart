import 'package:chatapp/Screens/signIn.dart';
import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';

class OnBoard2 extends StatefulWidget {
  const OnBoard2({super.key});

  @override
  State<OnBoard2> createState() => _OnBoard2State();
}

class _OnBoard2State extends State<OnBoard2> {
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
                Image.asset('assets/images/Illustration2.png'),
                Image.asset('assets/images/burgers.png'),
              ],
            ),
            SizedBox(height: 55),

            // === Text without space between them ===
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Foodie is Where Your',
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
                    'Comfort Food Resides',
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
                    'Enjoy a fast and smooth food delievery at',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),

                  //  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    'your doorstep',
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
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => SignIn()));
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
