import 'package:chatapp/Screens/message.dart';
import 'package:chatapp/models/colors.dart';
import 'package:flutter/material.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({super.key});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
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
                height: 60,
              ),

              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Message(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColors.headingColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: 302,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: AppColors.textFieldColor,
                      ),
                    ),
                    child: Column(
                      children: [
                        // ==== CHAT BLOCKS ====

                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
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
                                      Padding(
                                          padding: EdgeInsets.only(left: 10)),
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/nax.png'),
                                        radius: 30,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                             // ==== TEXT FIELD ====
                      SizedBox(height: 377,),
                               Container(
                        height: 60,
                        width: 300,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(
                            color: AppColors.textFieldColor,
                          ),
                        ),
                        child: TextField(
                          // controller: _searchController,
                          decoration: InputDecoration(
                            
                            hintText: 'Send message....',
                            hintStyle: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Container(
        padding: EdgeInsets.all(10),
        child: Image.asset(
          'assets/images/sentIcon.png',
          height: 20,
          width: 20,
          color: AppColors.pinkColor,
        ),
      ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                          ),
                          style: TextStyle(
                            color: AppColors.textColor,
                          ),
                        ),
                      ),

                      ],
                    ),
                  ),
                ],
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
      ),
    );
  }
}
