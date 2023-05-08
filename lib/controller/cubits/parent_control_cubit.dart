import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabcash/controller/states/parent_control_states.dart';

class ParentControlCubit extends Cubit<ParentControlStates> {
  ParentControlCubit() : super(ParentControlInitiateState());

  static ParentControlCubit get(BuildContext context) => BlocProvider.of(context);

  bool isTransferSwitched = true;
  bool isOnlineShoppingSwitched = true;
  bool isPayBillsSwitched = false;
  bool isCashInSwitched = true;
  bool isCashOutSwitched = false;
  bool showHoverScreen = false;

  void switchTransfer(bool value) {
    isTransferSwitched = value;
    emit(ParentControlSwitchTransferState());
  }

  void switchOnlineShopping(bool value) {
    isOnlineShoppingSwitched = value;
    emit(ParentControlSwitchTransferState());
  }

  void switchPayBills(bool value) {
    isPayBillsSwitched = value;
    emit(ParentControlSwitchTransferState());
  }

  void switchCashIn(bool value) {
    isCashInSwitched = value;
    emit(ParentControlSwitchTransferState());
  }

  void switchCashOut(bool value) {
    isCashOutSwitched = value;
    emit(ParentControlSwitchTransferState());
  }

  void changeHoverScreenState() {
    showHoverScreen = !showHoverScreen;
    emit(HoverScreenChangeState());
  }
}