import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabcash/controller/cubits/login_cubit.dart';
import 'package:tabcash/controller/states/login_states.dart';
import 'package:tabcash/views/sign_up_screen/sign_up_screen.dart';
import '../../controller/share/components/component.dart';
import '../../controller/share/constants/constants.dart';
import '../../controller/share/network/local/cache_helper/cache.dart';
import '../../controller/share/style/colors.dart';
import '../layout/layout_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit , LoginStates>(
        listener: (context, state) {
          if(state is LoginSuccessState){
            if(state.userModel != null){
              print(state.userModel.data!.accessToken);
              print(state.userModel.message);
              CacheHelper.saveData(key: 'token' , value: state.userModel.data!.accessToken).then((value){
                token = state.userModel.data!.accessToken;
                navigateAndFinish(context, LayoutScreen());
              });
              showToast(
                  text: state.userModel.message.toString(),
                  toastStates: ToastStates.SUCCESS
              );
            }else{
              // print(state.shopLoginModel.message);
              showToast(
                  text: state.userModel.message.toString(),
                  toastStates: ToastStates.ERROR
              );
            }
          }
        },
        builder: (context, state) {
          LoginCubit cubit = LoginCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: SvgPicture.asset('assets/images/logo.svg'),
                    ),
                    SizedBox(
                      height: 20,
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
                        'Please login to access your account.',
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextComponent(
                                text: 'Email or phone number',
                                color: defaultBlackColor00,
                              ),
                              Spacer(),
                              Icon(
                                Icons.info_outline,
                                size: 15,
                                color: Color(0xFF455360),
                              ),
                            ],
                          ),
                          TextFormFiledComponentItem(
                            controller: emailController,
                            hint: 'Type your email name',
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Email can\'t be empty';
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
                          Row(
                            children: [
                              Spacer(),
                              defaultTextButton(
                                function: (){},
                                text: 'Forgot password?',
                                textstyle: TextStyle(
                                  color: defaultBlueColor0D,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          defaultButton(
                            function: (){
                              if(formKey.currentState!.validate()){
                                cubit.login(
                                    email: emailController.text,
                                    password: passwordController.text
                                );
                                navigateAndFinish(context, LayoutScreen());
                              }
                            },
                            color: defaultBlueColor0D,
                            text: 'Login',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
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
                            navigateto(context, SignUpScreen());
                          },
                          text: 'Sign up' ,
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
          );
        },
      ),
    );
  }
}
