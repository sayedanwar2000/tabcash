import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabcash/views/home_screen/home_screen.dart';
import 'package:tabcash/views/more_screen/more_screen.dart';
import 'package:tabcash/views/scanning_screen/scanning_screen.dart';
import 'package:tabcash/views/settings_screen/settings_screen.dart';
import '../../views/transfer_screen/transfer_screen.dart';
import '../share/style/colors.dart';
import '../states/layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitiateState());

  static LayoutCubit get(BuildContext context) =>
      BlocProvider.of(context);

  int currentIndex = 2;
  List<Widget> bottomScreens = [
    HomeScreen(),
    TransferScreen(),
    ScanningScreen(),
    MoreScreen(),
    SettingsScreen(),
    // PatientContactScreen(),
  ];

  // List<Widget> bottomNavIcons = [
  //   SvgPicture.asset(
  //       'assets/bottom_nav_icons/medication_reminder_not_active.svg'),
  //   SvgPicture.asset('assets/bottom_nav_icons/video_not_active.svg'),
  //   SvgPicture.asset('assets/bottom_nav_icons/home_active.svg'),
  //   SvgPicture.asset('assets/bottom_nav_icons/chat_not_active.svg'),
  //   // SvgPicture.asset('assets/bottom_nav_icons/contact_not_active.svg'),
  // ];

  List<Widget> bottomNavigationIcons = [
    Icon(
      Icons.home,
      color: defaultBlueColor0D,
    ),
    SvgPicture.asset(
      'assets/svgs/transfer_icon.svg',
      color: defaultBlueColor0D,
      height: 20,
      width: 20,
    ),
    Icon(
      Icons.qr_code_scanner_rounded,
      color: defaultWhiteColorFF,
    ),
    Icon(
      Icons.category,
      color: defaultBlueColor0D,
    ),
    Icon(
      Icons.settings,
      color: defaultBlueColor0D,
    ),
  ];

  void changeBottomIndex(int index) {
    currentIndex = index;
    if (index == 0) {
      bottomNavigationIcons = [
        Icon(
          Icons.home,
          color: defaultWhiteColorFF,
        ),
        SvgPicture.asset(
          'assets/svgs/transfer_icon.svg',
          color: defaultBlueColor0D,
          height: 20,
          width: 20,
        ),
        Icon(
          Icons.qr_code_scanner_rounded,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.category,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.settings,
          color: defaultBlueColor0D,
        ),
      ];
    } else if (index == 1) {
      bottomNavigationIcons = [
        Icon(
          Icons.home,
          color: defaultBlueColor0D,
        ),
        SvgPicture.asset(
          'assets/svgs/transfer_icon.svg',
          color: defaultWhiteColorFF,
          height: 20,
          width: 20,
        ),
        Icon(
          Icons.qr_code_scanner_rounded,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.category,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.settings,
          color: defaultBlueColor0D,
        ),
      ];
    } else if (index == 2) {
      bottomNavigationIcons = [
        Icon(
          Icons.home,
          color: defaultBlueColor0D,
        ),
        SvgPicture.asset(
          'assets/svgs/transfer_icon.svg',
          color: defaultBlueColor0D,
          height: 20,
          width: 20,
        ),
        Icon(
          Icons.qr_code_scanner_rounded,
          color: defaultWhiteColorFF,
        ),
        Icon(
          Icons.category,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.settings,
          color: defaultBlueColor0D,
        ),
      ];
    } else if (index == 3) {
      bottomNavigationIcons = [
        Icon(
          Icons.home,
          color: defaultBlueColor0D,
        ),
        SvgPicture.asset(
          'assets/svgs/transfer_icon.svg',
          color: defaultBlueColor0D,
          height: 20,
          width: 20,
        ),
        Icon(
          Icons.qr_code_scanner_rounded,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.category,
          color: defaultWhiteColorFF,
        ),
        Icon(
          Icons.settings,
          color: defaultBlueColor0D,
        ),
      ];
    } else if (index == 4) {
      bottomNavigationIcons = [
        Icon(
          Icons.home,
          color: defaultBlueColor0D,
        ),
        SvgPicture.asset(
          'assets/svgs/transfer_icon.svg',
          color: defaultBlueColor0D,
          height: 20,
          width: 20,
        ),
        Icon(
          Icons.qr_code_scanner_rounded,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.category,
          color: defaultBlueColor0D,
        ),
        Icon(
          Icons.settings,
          color: defaultWhiteColorFF,
        ),
      ];
    }
    emit(LayoutChangeBottomNavigationBarState());
  }
}