import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/sign_up_states.dart';

class SignUpCubit extends Cubit<SignUpStates>  {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(BuildContext context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  String ? gender;

  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(SignUpChangePasswordVisibility());
  }

  void changeGenderValue(String value){
    gender = value;
    emit(ChangeGenderValueState());
  }

}