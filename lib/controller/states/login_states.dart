import 'package:tabcash/models/user_model.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  UserModel userModel;
  LoginSuccessState({
    required this.userModel,
  });
}

class LoginErrorState extends LoginStates {
  final String error;

  LoginErrorState({required this.error});
}

class ChangePasswordVisbilityState extends LoginStates {}
