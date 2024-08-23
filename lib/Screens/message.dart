import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppColors.screenColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Text(
                    'Chat',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: AppColors.headingColor,
                    ),
                  ),
                ],
              ),

              // ==== CHAT BLOCKS ====

              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Container(
                    height: 80,
                    width: 300,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColors.textFieldColor,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/nax.png'),
                              radius: 30,
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Naxient',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.headingColor,
                                  ),
                                ),
                                Text(
                                  'Your order just arrived!',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                '18:00',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 2
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Container(
                    height: 80,
                    width: 300,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColors.textFieldColor,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/hawkins.png'),
                              radius: 30,
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'hawkins',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.headingColor,
                                  ),
                                ),
                                Text(
                                  'Your order just arrived!',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                '16:00',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 3

              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Container(
                    height: 80,
                    width: 300,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: AppColors.textFieldColor,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/alex.png'),
                              radius: 30,
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ieslie Alexander',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.headingColor,
                                  ),
                                ),
                                Text(
                                  'Your order just arrived!',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                '21:00',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 300,
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
      ),
    );
  }
}
