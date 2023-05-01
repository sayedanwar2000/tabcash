// ignore_for_file: non_constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import '../share/network/endpointer.dart';
import '../share/network/remote/dio_helper.dart';
import '../states/my_account_state.dart';

class MyAccountCubit extends Cubit<MyAccountStates> {
  MyAccountCubit() : super(MyAccountInitialState());

  static MyAccountCubit get(context) => BlocProvider.of(context);

  void userUpDate({
    required String id,
    required String accountType,
    required String accountTypeName,
    required String defaultLanguage,
    required String fName,
    required String lNme,
    required String mob,
    required String phoneCountryCode,
    required String invoiceAddress,
    required String invoiceCountryCode,
    required String invoiceCityCode,
    required String emailSent,
    required String currency,
    String? referralCode,
    String? invoiceStateCode,
    String? invoiceZipPostalCode,
    String? voucherCode,
    String? companyCode,
  }){
    emit(UpDateLoadingState());
    DioHelper.postData(
      url: UpDate,
      data: {
        'id':id,
        'account_type': accountType,
        'account_type_name': accountTypeName,
        'default_language': defaultLanguage,
        'referral_code': referralCode,
        'f_name': fName,
        'l_name': lNme,
        'mob': mob,
        'phone_country_code': phoneCountryCode,
        'invoice_address': invoiceAddress,
        'invoice_country_code': invoiceCountryCode,
        'invoice_state_code': invoiceStateCode,
        'invoice_city_code': invoiceCityCode,
        'invoice_zip_postal_code': invoiceZipPostalCode,
        'email_sent': emailSent,
        'currency': currency,
        'voucher_code': voucherCode,
        'company_code': companyCode,
      },
    ).then((value) {
      if(value.data.runtimeType == String) {
        emit(UpDateSuccessState());
      }
    }).catchError((error){
      // print(error.toString());
      emit(UpDateErrorState(error.toString()));
    });
  }

}
