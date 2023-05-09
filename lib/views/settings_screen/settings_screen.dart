import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabcash/controller/share/components/component.dart';

import '../../controller/share/style/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: defaultBlackColor00,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SettingsContainerComponent(
                widget: InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svgs/account_icon.svg'),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SettingsContainerComponent(
                widget: Column(
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/security_icon.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Safety & Privacy',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/language_icon.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Language',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/notifications_icon.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Notification',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SettingsContainerComponent(
                widget: Column(
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/question_icon.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'About the app',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/recommend_to_friend_icon.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Recommend to Friends',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/help_center.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Help Centre',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/feedback_icon.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Feedback',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/follow_us_icon.svg'),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Follow us',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SettingsContainerComponent(
                padding: 0,
                widget: defaultButton(
                  function: (){

                  },
                  color: defaultBlackColor00.withOpacity(0.03),
                  text: 'Sign out',
                  colorText: defaultRedColorFF,
                  fontSize: 20
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}