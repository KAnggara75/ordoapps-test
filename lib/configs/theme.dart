import '../constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kBGcolor,
    fontFamily: "Poppins",
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: Color(0xffF0F0F0)),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    fillColor: kGrey,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: kWhite,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
    iconTheme: IconThemeData(color: kBlack),
    titleTextStyle: TextStyle(
      color: kBlack,
      fontSize: 18,
    ),
  );
}
