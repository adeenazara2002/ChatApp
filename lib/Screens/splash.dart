import 'dart:async';
import 'package:chatapp/Screens/onBoarding.dart';
import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/Screens/onBoarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // ==== NAVIGATE TO THE NEXT SCREEN ====
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoard()),
      );
    });
  }

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

            // === FOOD LOGO ===
            Align(
              alignment: Alignment.bottomLeft,
              child: Transform.translate(
                offset: Offset(-50, 30),
                child: Image.asset('assets/images/foodlogo.png'),
              ),
            ),

            // === SMALL HORIZONTAL LINE ===

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10, left: 30),
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
