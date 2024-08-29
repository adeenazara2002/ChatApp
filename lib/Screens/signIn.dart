import 'package:chatapp/Screens/message.dart';
import 'package:chatapp/Screens/signUp.dart';
import 'package:chatapp/models/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  // Firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _signIn() async {
    try {
      // Sign in with email and password
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Navigate to Home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Message()),
      );
    } catch (e) {
      print(e);
      // You might want to show an error message here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
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
                  height: 360,
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
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: AppColors.headingColor),
                      ),

                      // textfield1

                      Container(
                        height: 60,
                        width: 260,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.textFieldColor,
                          ),
                        ),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: AppColors.headingColor,
                              size: 20,
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
                            color: AppColors.headingColor,
                          ),
                        ),
                      ),

                      // textfield2

                      Container(
                        height: 60,
                        width: 260,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: AppColors.textFieldColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.textFieldColor,
                          ),
                        ),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColors.headingColor,
                              size: 20,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: AppColors.headingColor,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.headingColor,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible =
                                      !_passwordVisible; // Toggle the state
                                });
                              },
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                          ),
                          style: TextStyle(
                            color: AppColors.headingColor,
                          ),
                        ),
                      ),
                      // === text ===
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColors.headingColor),
                            ),
                          ),
                        ],
                      ),

                      // === LOGIN BUTTON ===
                      SizedBox(
                        height: 20,
                      ),

                      ElevatedButton(
                        onPressed: _signIn,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.pinkColor,
                          foregroundColor: AppColors.screenColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80.0, vertical: 13.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),

                      // ==== TEXT ====
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 140),
                            child: Text(
                              'Or',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColors.pinkColor),
                            ),
                          ),
                        ],
                      ),

                      // ==== IMAGES ====
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 115)),
                          Image.asset('assets/images/google-icon 1.png'),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Image.asset('assets/images/facebook-3 1.png'),
                        ],
                      )
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          color: AppColors.pinkColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    )
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
      ),
    );
  }
}
