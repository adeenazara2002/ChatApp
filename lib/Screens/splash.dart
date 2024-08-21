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
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.splashColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // === MAIN LOGO ====

            Row(
              children: [
                SizedBox(
                  height: 500,
                ),
                Padding(padding: EdgeInsets.only(left: 110)),
                Image.asset('assets/images/foodie.png')
              ],
            ),

            // === FOOD LOGO ===

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 270,
                ),
                // Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset('assets/images/foodlogo.png')
              ],
            ),


            
          ],
        ),
      ),
    ));
  }
}
