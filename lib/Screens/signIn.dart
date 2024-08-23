import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.screenColor,
        child: Stack(
          children: [
            // === Pink Background Image ===
            Image.asset('assets/images/pinkPart.png'),

            // === Foodie Image ===
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset('assets/images/foodieWhite.png'),
              ),
            ),

            // === Text Below Image ===
            Positioned(
              top: 200,
              left: 70,
              right: 0,
              child: Text(
                'Deliver Favourite Food',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: AppColors.screenColor,
                ),
              ),
            ),

            // === Form Container ===
            Positioned(
              top: 280, // Adjust this value as needed
              left: 10,
              // right: 10,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                width: 300,
                height: 350,
                decoration: BoxDecoration(
                  color: AppColors.screenColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.screenColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25), // Shadow color
                      blurRadius: 8, // Spread of the shadow
                      offset: Offset(0, 4), // Offset to give a 3D effect
                    ),
                  ],
                ),
              ),
            ),

            // === Text Below Form ===
            Positioned(
              bottom: 40, // Position this text above the bottom container
              left: 110,
              child: Column(
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: AppColors.headingColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    'REGISTER',
                    style: TextStyle(
                      color: AppColors.pinkColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(
            //   height: 20,
            // ),
            // Padding(padding: EdgeInsets.only(bottom: 120)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
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
