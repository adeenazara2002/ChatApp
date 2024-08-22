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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.splashColor,
        child: Stack(
          children: [
            // === MAIN LOGO ===
            Center(
              child: Image.asset('assets/images/foodie.png'),
            ),

            // === FOOD LOGO (Half Visible from Left and Bottom) ===
            Align(
              alignment: Alignment.bottomLeft,
              child: Transform.translate(
                offset: Offset(
                    -50, 30), // Adjust both horizontal and vertical offsets
                child: Image.asset('assets/images/foodlogo.png'),
              ),
            ),

            // === SMALL HORIZONTAL LINE ===
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    bottom: 20, left: 30), // Adjust the bottom margin if needed
                width: 100, // Set the desired width of the line
                height: 5, // Set the height of the line
                decoration: BoxDecoration(
                  color: AppColors.headingColor,
                  borderRadius: BorderRadius.circular(10),
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
