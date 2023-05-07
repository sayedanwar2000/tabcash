import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabcash/controller/share/components/component.dart';
import 'package:tabcash/controller/share/style/colors.dart';
import 'package:tabcash/views/expense_weekly_screen/expense_weekly_screen.dart';
import 'package:tabcash/views/more_screen/more_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 12),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        // color: ,
                        shape: BoxShape.circle,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image(
                        image: NetworkImage(
                          'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?w=1060&t=st=1683364100~exp=1683364700~hmac=10d3994509fea36ae79a8a5dbbf70b7c95bd55495329d6744b7410796513f0f2'
                        ),
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Welcome Loly!',
                          style: TextStyle(
                            color: defaultBlackColor00,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Nice to see you again.',
                          style: TextStyle(
                              color: defaultBlackColor00,
                              fontSize: 12,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.notifications_active,
                        color: defaultColor0D_50,
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15),
              //     color: defaultWhiteColorFF,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey,
              //         blurRadius: 6.0,
              //         spreadRadius: 1.0,
              //         offset: Offset(
              //           2.0,
              //           2.0,
              //         ),
              //       ),
              //     ],
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 15.0 , vertical: 12.0),
              //         child: Row(
              //           children: [
              //             Text(
              //               'Your balance',
              //               style: TextStyle(
              //                 color: defaultBlackColor00,
              //                 fontWeight: FontWeight.w700,
              //                 fontSize: 18,
              //               ),
              //             ),
              //             Spacer(),
              //             Text(
              //               'Max EGP 100,000',
              //               style: TextStyle(
              //                 color: defaultBlackColor00,
              //                 fontWeight: FontWeight.w700,
              //                 fontSize: 12,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 15.0),
              //         child: Row(
              //           children: [
              //             Expanded(
              //               child: Text(
              //                 'Add your card and start to pay your bills online ,'
              //                     ' transfer and withdraw'
              //                     '  money between you any another card.',
              //                 style: TextStyle(
              //                   fontSize: 12,
              //                   fontWeight: FontWeight.w400,
              //                   color: defaultBlackColor00,
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             SvgPicture.asset('assets/svgs/card.svg'),
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 12),
              //         child:  Container(
              //           height: 40,
              //           decoration: BoxDecoration(
              //             color: defaultBlueColor0D,
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           width: 110,
              //           child: MaterialButton(
              //             onPressed: (){
              //
              //             },
              //             child: Text(
              //               'Add card',
              //               style: TextStyle(color: Colors.white, fontSize: 14),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                decoration: BoxDecoration(
                  color: defaultBlueColor0D,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Your balance',
                            style: TextStyle(
                              color: defaultWhiteColorFF,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Max EGP 100,000',
                            style: TextStyle(
                              color: defaultWhiteColorFF,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                textBaseline: TextBaseline.alphabetic,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text(
                                    '12000.98',
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w700,
                                      color: defaultWhiteColorFF,
                                    ),
                                  ),
                                  Text(
                                    'EGP',
                                    style: TextStyle(
                                      color: defaultWhiteColorFF,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 12,
                                    color: defaultWhiteColorFF,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    'Current balance',
                                    style: TextStyle(
                                      color: defaultWhiteColorFF,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: defaultColorE6,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 90,
                            height: 40,
                            child: MaterialButton(
                              onPressed: (){

                              },
                              child: Text(
                                'Manage',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Our services',
                    style: TextStyle(
                      color: defaultBlackColor00,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  SeeMoreTapedItem(widget: MoreScreen())
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  OurServicesTapedItem(
                    iconPath: 'assets/svgs/send_icon.svg',
                    text: 'Send',
                    textLine2: 'money',
                    function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/cash_in_out_icon.svg',
                      text: 'Cash',
                      textLine2: 'in/out',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/pay_bills_icon.svg',
                      text: 'Pay',
                      textLine2: 'bills',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                    iconPath: 'assets/svgs/bank_to_wallet_icon.svg',
                    text: 'Bank to',
                    textLine2: ' wallet',
                    function: (){},
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: defaultWhiteColorFF,
                    boxShadow: [
                      BoxShadow(
                        color: defaultColor1E.withOpacity(0.3),
                        blurRadius: 15.0,
                        offset: Offset(
                          1.0,
                          1.0,
                        ),
                      ),
                    ],
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Expenses',
                            style: TextStyle(
                              color: defaultBlackColor00,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          SeeMoreTapedItem(widget: ExpenseWeeklyScreen())
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Your expenses in the latest '
                                'period . you can andle your'
                                ' and balance your money .',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: defaultBlackColor00,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            'assets/images/graph.svg',
                            width: 150,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Recommended for you',
                style: TextStyle(
                  color: defaultBlackColor00,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildRecommendedItem(),
                    SizedBox(
                      width: 20,
                    ),
                    buildRecommendedItem(),
                    SizedBox(
                      width: 20,
                    ),
                    buildRecommendedItem(),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15),
              //     color: defaultWhiteColorFF,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey,
              //         blurRadius: 6.0,
              //         spreadRadius: 1.0,
              //         offset: Offset(
              //           2.0,
              //           2.0,
              //         ),
              //       ),
              //     ],
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 12),
              //         child: Text(
              //           'Our services',
              //           style: TextStyle(
              //             color: defaultBlackColor00,
              //             fontWeight: FontWeight.w700,
              //             fontSize: 18,
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsetsDirectional.only(
              //           start: 8,
              //           end: 8,
              //           bottom: 12,
              //         ),
              //         child: Row(
              //           children: [
              //             OurServicesIcon(
              //               iconPath: 'assets/svgs/send_icon.svg',
              //               function: (){}
              //             ),
              //             OurServicesIcon(
              //                 iconPath: 'assets/svgs/send_icon.svg',
              //                 function: (){}
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRecommendedItem(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
        color: defaultWhiteColorFF,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Text(
                  'Win',
                  style: TextStyle(
                    color: defaultBlackColor00,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '1000 Coins',
                  style: TextStyle(
                    color: defaultBlackColor00,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'when you',
                  style: TextStyle(
                    color: defaultBlackColor00,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'transfer up toWin',
                  style: TextStyle(
                    color: defaultBlackColor00,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '2000 EGP',
                  style: TextStyle(
                    color: defaultBlackColor00,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset('assets/images/flower_image.svg')
        ],
      ),
    );
  }
}
