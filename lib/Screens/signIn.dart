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
              top: 280,
              left: 10,
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
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50)),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: AppColors.headingColor),
                    ),
                    // textfield

                    Container(
                      height: 60,
                      width: 260,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColors.textFieldColor,
                        ),
                      ),
                      child: TextField(
                        // controller: _searchController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: AppColors.headingColor,
                            size: 30,
                          ),
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(
                            color: AppColors.headingColor,
                            fontFamily: 'Poppins-Regular',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0,
                          ),
                        ),
                        style: TextStyle(
                          color: Color.fromRGBO(143, 143, 158, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // === Text Below Form ===
            Positioned(
              bottom: 40,
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
