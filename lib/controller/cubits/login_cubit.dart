import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/user_model.dart';
import '../share/network/endpointer.dart';
import '../share/network/remote/dio_helper.dart';
import '../states/login_states.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  late UserModel loginModel;

  void login({
    required String email,
    required String password,
  }){
    emit(LoginLoadingState());
    DioHelper.postData(
      url: Login,
      data: {
        'email' : email,
        'password' : password,
      },
    ).then((value) {
      print(value.data);
      loginModel = UserModel.fromJson(value.data);
      print(loginModel?.message);
      // print(loginModel?.status);
      print(loginModel?.data?.accessToken);
      emit(LoginSuccessState(userModel: loginModel!));
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState(error: error.toString()));
    });
  }

  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility : Icons.visibility_off;
    emit(ChangePasswordVisbilityState());
  }
}
