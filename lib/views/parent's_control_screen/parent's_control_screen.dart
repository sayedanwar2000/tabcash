import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabcash/controller/cubits/parent_control_cubit.dart';
import 'package:tabcash/controller/share/components/component.dart';
import 'package:tabcash/controller/share/style/colors.dart';
import 'package:tabcash/controller/states/parent_control_states.dart';

class ParentControlScreen extends StatelessWidget {
  ParentControlScreen({Key? key}) : super(key: key);

  AnimateIconController controller = AnimateIconController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ParentControlCubit(),
      child: BlocConsumer<ParentControlCubit , ParentControlStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          ParentControlCubit cubit = ParentControlCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                            ),
                          ),
                          Text(
                            "Parent’s control",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: defaultBlackColor00,
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: (){
                              
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: defaultColorDD,
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 8.0),
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 16,
                                        backgroundColor: defaultColor15_76,
                                        child: SvgPicture.asset(
                                          'assets/svgs/awesome_exchange_alt_icon.svg',
                                          width: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Switch account',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: defaultBlueColor0D,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 18.0),
                        child: Row(
                          children: [
                            Text(
                              "Adam’s balance",
                              style: TextStyle(
                                color: defaultWhiteColorFF,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  '7000 EGP',
                                  style: TextStyle(
                                    color: defaultWhiteColorFF,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 14,
                                      color: defaultWhiteColorFF,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Current balance',
                                      style: TextStyle(
                                        color: defaultWhiteColorFF,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OurServicesIcon(
                          iconPath: 'assets/svgs/send_icon.svg',
                          function: (){},
                          text: 'Send',
                          textLine2: 'money',
                        ),
                        OurServicesIcon(
                          iconPath: 'assets/svgs/add_icon.svg',
                          function: (){},
                          text: 'Withdraw',
                          textLine2: '',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: defaultWhiteColorFF,
                        boxShadow: [
                          BoxShadow(
                            color: defaultColor1E.withOpacity(0.3),
                            blurRadius: 15.0, // soften the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              1.0, // Move to bottom 5 Vertically
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Allow/Block services',
                              style: TextStyle(
                                color: defaultBlackColor00,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SwitchedItemComponent(
                              text: 'Transfer money to another account',
                              value: cubit.isTransferSwitched,
                              function: ((value) {
                                cubit.switchTransfer(value);
                              }) ,
                            ),
                            SwitchedItemComponent(
                              text: 'Online shopping',
                              value: cubit.isOnlineShoppingSwitched,
                              function: ((value) {
                                cubit.switchOnlineShopping(value);
                              }) ,
                            ),
                            SwitchedItemComponent(
                              text: 'Pay bills',
                              value: cubit.isPayBillsSwitched,
                              function: ((value) {
                                cubit.switchPayBills(value);
                              }) ,
                            ),
                            SwitchedItemComponent(
                              text: 'Cash in',
                              value: cubit.isCashInSwitched,
                              function: ((value) {
                                cubit.switchCashIn(value);
                              }) ,
                            ),
                            SwitchedItemComponent(
                              text: 'Cash out',
                              value: cubit.isCashOutSwitched,
                              function: ((value) {
                                cubit.switchCashOut(value);
                              }) ,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  
}