// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../views/drawer_header/drawer_header.dart';
import '../network/local/cache_helper/cache.dart';
import '../style/colors.dart';

void navigateto(context, Widget Widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Widget,
  ),
);

void navigateAndFinish(context, Widget Widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => Widget,
    ),
        (route) => false);

Widget defaultTextFormField({
  required TextEditingController controll,
  required TextInputType type,
  validat,
  String? label,
  String? hintText,
  IconData? prefix,
  onSubmit,
  onChange,
  ontap,
  bool isEnabled = true,
  bool isPassword = false,
  IconData? suffix,
  suffixPressed,
  maxline = 1,
  dynamic colorBorderFocuse,
  dynamic colorBorder,
  textAlign,
  border,
  hintStyle,
  textStyle
}) =>
    TextFormField(
      maxLines: maxline,
      controller: controll,
      keyboardType: type,
      validator: validat,
      obscureText: isPassword,
      enabled: isEnabled,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      onTap: ontap,
      textAlign: textAlign??TextAlign.start,
      style: textStyle,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        /*focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorderFocuse ?? const Color(0xfff7921c),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorder ?? const Color(0xff000236),
          ),
        ),*/
        hintStyle: hintStyle,
        prefixIcon: prefix != null
            ? Icon(
          prefix,
        )
            : null,
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffix),
        )
            : null,
        border: border ??  const OutlineInputBorder(),
      ),
    );

Widget defaultDrawer({
  required context,
  required homeCubit,
}) =>
    Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          MyDrawerHeader(),
          ListTile(
            leading: const Icon(Icons.person_outline_outlined),
            title: const Text('Profile'),
            onTap: () {
              // navigateto(context, MyAccountScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('Referral code'),
            onTap: () {
              // navigateto(context, ReferralCodeScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.calculate_outlined),
            title: const Text('Easy2Ship Cost Calculator'),
            onTap: () {
              // navigateto(context, CalculateScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.warehouse_outlined),
            title: const Text('My Storage'),
            onTap: () {
              homeCubit.changePageNumber(4);
              // navigateto(context, HomeScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.dataset_outlined),
            title: const Text('My Quotation'),
            onTap: () {
              homeCubit.changePageNumber(1);
              // navigateto(context, HomeScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.storage_outlined),
            title: const Text('My Packages'),
            onTap: () {
              homeCubit.changePageNumber(3);
              // navigateto(context, HomeScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.inventory_sharp),
            title: const Text('Invoices'),
            onTap: () {
              homeCubit.changePageNumber(0);
              // navigateto(context, HomeScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.payments_outlined),
            title: const Text('Pending'),
            onTap: () {
              // navigateto(context, const PendingBookingScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.data_usage_outlined),
            title: const Text('How To Use'),
            onTap: () {
              // navigateto(context, const HowToUseScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.quiz_outlined),
            title: const Text('FAQ'),
            onTap: () {
              // functionsShare.launchInBrowser(launchTo: 3);
            },
          ),
          ListTile(
            leading: const Icon(Icons.support_agent),
            title: const Text('Contact'),
            onTap: () {
              // navigateto(context, ContactScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('EASY2SHIP Settings'),
            onTap: () {
              // navigateto(context, EASY2SHIPSettingsScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text('Log out'),
            onTap: () {
              CacheHelper.removeData(key: 'username');
              CacheHelper.removeData(key: 'password');
              // navigateAndFinish(context, ShowScreen());
            },
          ),
        ],
      ),
    );

Widget defaultButton({
  String? text,
  required function,
  required Color color,
  colorText,
  wid,
  double width = double.infinity,
  double fontSize = 14,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: function,
        child: wid ??
            Text(
              text ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colorText ?? Colors.white,
                fontSize: fontSize,
              ),
            ),
      ),
    );

Widget defaultTextButton({
  required function,
  required String text,
  TextStyle? textstyle,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text,
        style: textstyle,
      ),
    );

Widget myDivider({
  double? Width,
  color,
  height,
}) =>
    Container(
      width: Width ?? double.infinity,
      height: height?? 2.0,
      color: color ?? Colors.grey[300],
    );

Widget defaultField({
  required String label,
  required Widget widget,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
        ),
        const SizedBox(
          height: 15.0,
        ),
        widget,
      ],
    );

class OurServicesIcon extends StatelessWidget {

  final String iconPath;
  final Function() function;
  final String text;
  final String textLine2;

  const OurServicesIcon({super.key,
    required this.iconPath,
    required this.function,
    required this.text,
    required this.textLine2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: function,
        child: Column(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset(iconPath),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: defaultBlueColor0D,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              textLine2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: defaultBlueColor0D,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OurServicesTapedItem extends StatelessWidget {

  final String iconPath;
  final String text;
  final String textLine2;
  final Function() function;


  const OurServicesTapedItem({super.key,
    required this.iconPath,
    required this.text,
    required this.textLine2,
    required this.function
  });



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: function,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: defaultWhiteColorFF,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: defaultColor1E.withOpacity(0.3),
                      blurRadius: 15.0, // soften the shadow

                      offset: const Offset(
                        1.0, // Move to right 5  horizontally
                        1.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(
                  iconPath,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: defaultBlueColor0D,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            textLine2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: defaultBlueColor0D,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class SeeMoreTapedItem extends StatelessWidget {

  final Widget widget;

  const SeeMoreTapedItem({super.key,
    required this.widget
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateto(context, widget);
      },
      child: Row(
        children: [
          Text(
            'See more',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: defaultBlackColor00,
            ),
          ),
          const SizedBox(
            width: 2,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 12,
            color: defaultBlackColor00,
          ),
        ],
      ),
    );
  }
}

class SettingsContainerComponent extends StatelessWidget {

  final Widget widget;
  double padding = 12;


  SettingsContainerComponent({super.key,
    required this.widget,
    this.padding = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(

            color: defaultBlackColor00.withOpacity(0.2)

        ),
        color: defaultBlackColor00.withOpacity(0.03),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: widget,
      ),
    );
  }
}

class ExpensesItemComponent extends StatelessWidget {

  final String iconPath;
  final String text;
  final String money;
  final double percentage;


  const ExpensesItemComponent({super.key,
    required this.iconPath,
    required this.text,
    required this.money,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: defaultColorBA_50,
              radius: 30,
              child: SvgPicture.asset(iconPath),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: defaultBlackColor00,
                  ),
                ),

                const SizedBox(

                  height: 5,
                ),
                Text(
                  money,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: defaultBlackColor00,
                  ),
                ),
              ],
            ),

            const Spacer(),
            Text(
              '$percentage%',
              style: TextStyle(
                  color: defaultBlueColor0D,
                  fontSize: 24,
                  fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
        const SizedBox(

          height: 15,
        ),
      ],
    );
  }
}

class SwitchedItemComponent extends StatelessWidget {

  final String text;
  final bool value;
  final Function(dynamic value) function;
  const SwitchedItemComponent({super.key,

    required this.text,
    required this.value,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: defaultBlackColor00,
            ),
          ),
        ),
        const Spacer(),
        Switch(
            value: value,
            activeColor: defaultBlueColor0D,
            onChanged: function

        )
      ],
    );
  }
}

class TextComponent extends StatelessWidget {

  final String text;
  final Color color;

  TextComponent({
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: color,
      ),
    );
  }
}

class TextFormFiledComponentItem extends StatelessWidget {

  final TextEditingController controller;
  final String hint;
  final String? Function(String? value) validator;
  IconData? suffixIcon;
  Function()? onPressedSuffixIcon;
  bool ? obscureText = false;

  TextFormFiledComponentItem({
    required this.controller,
    required this.hint,
    required this.validator,
    this.suffixIcon,
    this.obscureText = false,
    this.onPressedSuffixIcon,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: defaultBlackColor00.withOpacity(0.5),
            ),
            border: InputBorder.none,
            filled: true,
            fillColor: defaultColorEC,
            suffixIcon: IconButton(
              onPressed: onPressedSuffixIcon,
              icon: Icon(
                suffixIcon,
              ),
            ),
          ),
          obscureText: obscureText!,

          validator: validator ,
        ),
      ],
    );
  }
}

