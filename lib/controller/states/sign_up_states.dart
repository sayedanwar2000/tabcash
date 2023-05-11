import 'package:tabcash/models/register_model.dart';

abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpLoadingState extends SignUpStates {}

class SignUpSuccessState extends SignUpStates {
  final RegisterModel userModel;

  SignUpSuccessState({required this.userModel});

}

class SignUpErrorState extends SignUpStates {
  final String error;

  SignUpErrorState(this.error);
}

class SignUpChangePasswordVisibility extends SignUpStates {}

class ChangeGenderValueState extends SignUpStates {}

class SelectDateOfBirthState extends SignUpStates {}