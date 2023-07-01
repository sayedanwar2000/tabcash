import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabcash/controller/share/network/endpointer.dart';

import '../../models/register_model.dart';
import '../share/network/remote/dio_helper.dart';
import '../states/sign_up_states.dart';

class SignUpCubit extends Cubit<SignUpStates>  {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(BuildContext context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  String ? gender;
  DateTime ? selectedDate;

  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(SignUpChangePasswordVisibility());
  }

  void changeGenderValue(String value){
    gender = value;
    emit(ChangeGenderValueState());
  }

  void selectBirthDate(DateTime dateTime){
    selectedDate = dateTime;
    emit(SelectDateOfBirthState());
  }

  void register({
    required String firstName ,
    required String lastName,
    required String username,
    required String email,
    required String password,
    required String address,
    required String gender,
    required String phone,
    required String nationalId,
    required String dateOfBirth,
  }){
    emit(SignUpLoadingState());
    DioHelper.postData(
        url: Register ,
        data:
        {
          'firstName' : firstName,
          'lastName': lastName,
          'username' : username,
          'email' : email,
          'password' : password,
          'address' : address,
          'gender' : gender,
          'phone' : phone,
          'nationalId' : nationalId,
          'dob' : dateOfBirth
        }
    ).then((value) {
      print(value.data);
      RegisterModel userModel = RegisterModel.fromJson(value.data);
      print(userModel?.message);
      print(userModel?.error);
      emit(SignUpSuccessState(userModel: userModel));
    }).catchError((error) {
      print(error.toString());
      emit(SignUpErrorState(error.toString()));
    });
  }
}