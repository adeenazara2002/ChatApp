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
        child: Column(
          children: [
            // === Use Stack to overlay images ===
            Stack(
              children: [
                Image.asset('assets/images/pinkPart.png'),
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset('assets/images/foodieWhite.png'),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 70,
                  right: 0,
                  child: Text(
                    'Deliver Favourite Food',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: AppColors.screenColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200),

            // === Text without space between them ===
            Padding(
              padding: const EdgeInsets.only(left: 10),
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
                  SizedBox(
                    width: 50,
                  ),
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

            SizedBox(
              height: 40,
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
