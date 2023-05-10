import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabcash/controller/cubits/sign_up_cubit.dart';
import 'package:tabcash/controller/share/style/colors.dart';
import 'package:tabcash/controller/states/sign_up_states.dart';
import 'package:tabcash/views/login_screen/login_screen.dart';

import '../../controller/share/components/component.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController notationIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit , SignUpStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          SignUpCubit cubit = SignUpCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/star.svg'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: SvgPicture.asset('assets/images/logo.svg'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Welcome!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: defaultBlackColor00,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Please sign up to access your account.',
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        SvgPicture.asset(
                          'assets/svgs/star.svg',
                          width: 34,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: defaultWhiteColorFF,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextComponent(
                                text: 'Personal info',
                                color: defaultBlackColor00.withOpacity(0.6),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextComponent(
                                text: 'First Name',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: firstNameController,
                                hint: 'Type your first name',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'First name can\'t be empty';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Last Name',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: lastNameController,
                                hint: 'Type your last name',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Last name can\'t be empty';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Username',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: userNameController,
                                hint: 'Type your username',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Username can\'t be empty';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextComponent(
                                text: 'Security info',
                                color: defaultBlackColor00.withOpacity(0.6),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextComponent(
                                text: 'Email',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: emailController,
                                hint: 'Type your email',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Email can\'t be empty';
                                  }else if(!value!.contains('@')){
                                    return "Email must be contain '@'";
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Password',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: passwordController,
                                hint: 'Type your password',
                                suffixIcon: cubit.suffix,
                                obscureText: cubit.isPassword,
                                onPressedSuffixIcon: (){
                                  cubit.changePasswordVisibility();
                                },
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Password can\'t be empty';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Confirm password',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: confirmPasswordController,
                                suffixIcon: cubit.suffix,
                                obscureText: cubit.isPassword,
                                onPressedSuffixIcon: (){
                                  cubit.changePasswordVisibility();
                                },
                                hint: 'Repeat your password',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Confirm password can\'t be empty';
                                  } else if(value != passwordController.text){
                                    return 'Confirm password don\'t match password';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Address',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: passwordController,
                                hint: 'Type your address',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Address can\'t be empty';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Phone',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: passwordController,
                                hint: 'Type your phone',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'phone can\'t be empty';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Notation ID',
                                color: defaultBlackColor00,
                              ),
                              TextFormFiledComponentItem(
                                controller: passwordController,
                                hint: 'Type your notation id',
                                validator: (value){
                                  if(value!.isEmpty){
                                    return 'Notation id can\'t be empty';
                                  }else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextComponent(
                                text: 'Gender',
                                color: defaultBlackColor00,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Radio(
                                      value: 'Male',
                                      groupValue: cubit.gender,
                                      onChanged: (value){
                                        cubit.changeGenderValue(value as String);
                                      },
                                    ),
                                    Text('Male'),
                                    Spacer(),
                                    Radio(
                                      value: 'Female',
                                      groupValue: cubit.gender,
                                      onChanged: (value){
                                        cubit.changeGenderValue(value as String);
                                      },
                                    ),
                                    Text(
                                      'Female',
                                      style: TextStyle(
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              defaultButton(
                                function: (){},
                                color: defaultBlueColor0D ,
                                text: 'Sign up',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Do you have an account?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: defaultBlackColor00,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  defaultTextButton(
                                    function: (){
                                      navigateto(context, LoginScreen());
                                    },
                                    text: 'Sign in' ,
                                    textstyle: TextStyle(
                                      color: defaultBlueColor0D,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
