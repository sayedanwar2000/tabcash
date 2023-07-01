import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabcash/controller/share/style/colors.dart';
import '../../controller/cubits/layout_cubit.dart';
import '../../controller/states/layout_states.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({Key? key}) : super(key: key);

  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit , LayoutStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          LayoutCubit cubit = LayoutCubit.get(context);
          return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              items: cubit.bottomNavigationIcons,
              buttonBackgroundColor: defaultBlueColor0D,
              height: 60.0,
              onTap: (index) {
                cubit.changeBottomIndex(index);
              },
              index: cubit.currentIndex,
              // color: Colors.black12,
              backgroundColor: Colors.transparent,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 800),
              letIndexChange: (index) => true,
            ),
            body: cubit.bottomScreens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}