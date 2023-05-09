import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/expenses_data_model.dart';
import '../states/expenses_outcome_states.dart';

class ExpensesOutcomeCubit extends Cubit<ExpensesOutcomeStates> {
  ExpensesOutcomeCubit() : super(ExpensesOutcomeInitiateState());

  static ExpensesOutcomeCubit get(BuildContext context) => BlocProvider.of(context);

  bool isWeekly = true;

  void toggleTapedItem(bool value){
    isWeekly = value;
    emit(ExpensesOutcomeToggleTapState());
  }

  List<ExpensesMonthlyDataModel> expensesMonthlyDataIncomeModel = [
    ExpensesMonthlyDataModel(month: 'Jan', money: 90),
    ExpensesMonthlyDataModel(month: 'Feb', money:  10),
    ExpensesMonthlyDataModel(month: 'Mar', money:  34),
    ExpensesMonthlyDataModel(month: 'Apr', money: 65),
    ExpensesMonthlyDataModel(month: 'May', money: 40),
    ExpensesMonthlyDataModel(month: 'June', money: 70),
    ExpensesMonthlyDataModel(month: 'July', money: 60),
  ];

  List<ExpensesWeeklyDataModel> expensesWeeklyDataIncomeModel = [
    ExpensesWeeklyDataModel(week: 'Sat', money: 10),
    ExpensesWeeklyDataModel(week: 'Sun', money:  65),
    ExpensesWeeklyDataModel(week: 'Mon', money:  30),
    ExpensesWeeklyDataModel(week: 'Tus', money: 4),
    ExpensesWeeklyDataModel(week: 'Wed', money: 18),
    ExpensesWeeklyDataModel(week: 'Th', money: 12),
    ExpensesWeeklyDataModel(week: 'Fri', money: 90),
  ];

}