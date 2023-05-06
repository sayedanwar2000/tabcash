// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../../views/drawer_header/drawer_header.dart';
import '../network/local/cache_helper/cache.dart';

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
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorderFocuse ?? const Color(0xfff7921c),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorder ?? const Color(0xff000236),
          ),
        ),
        hintStyle: const TextStyle(color: Colors.grey),
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
        border: const OutlineInputBorder(),
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
  double? width,
}) =>
    Container(
      width: width ?? double.infinity,
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
        //style: textstyle,
      ),
    );

Widget myDivider({
  double? Width,
}) =>
    Container(
      width: Width ?? double.infinity,
      height: 2.0,
      color: Colors.grey[300],
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

