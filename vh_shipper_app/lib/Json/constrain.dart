import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';

const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);

const kLightPrimaryColor = Color(0xFFFFFFFF);
const kLightSecondaryColor = Color(0xFFF3F7FB);
const kAccentColor = Color.fromARGB(255, 255, 190, 105);
const kAccentColorButton = Color.fromARGB(255, 3, 82, 151);

enum StatusAccordionOrder { create, doing, done, fail }

List itemsTab = [
  {"icon": Icons.home, "size": 30.0, "label": "Trang chủ"},
  {"icon": Icons.notes_rounded, "size": 22.0, "label": "Đơn hàng"},
  {"icon": Icons.history, "size": 21.0, "label": "Lịch sử"},
  {
    "icon": Icons.account_balance_wallet_outlined,
    "size": 24.0,
    "label": "Giao dịch"
  },
  {"icon": Icons.account_circle_outlined, "size": 30.0, "label": "Tài khoản"},
];

const kSpacingUnit = 10;

final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'SFProText',
  primaryColor: kDarkPrimaryColor,
  canvasColor: kDarkPrimaryColor,
  backgroundColor: kDarkSecondaryColor,
  accentColor: kAccentColor,
  iconTheme: ThemeData.dark().iconTheme.copyWith(
        color: kLightSecondaryColor,
      ),
  textTheme: ThemeData.dark().textTheme.apply(
        fontFamily: 'SFProText',
        bodyColor: kLightSecondaryColor,
        displayColor: kLightSecondaryColor,
      ),
);

String getIconOrder(modeId) {
  if (modeId == "1") {
    return "assets/images/breakfast.png";
  } else if (modeId == "2") {
    return "assets/images/dicho-active.png";
  } else {
    return "assets/images/giaohang.png";
  }
}

final kLightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'SF Regular',
    primaryColor: kLightPrimaryColor,
    canvasColor: kLightPrimaryColor,
    backgroundColor: kLightSecondaryColor,
    accentColor: kAccentColor,
    scaffoldBackgroundColor: MaterialColors.grey,
    iconTheme: ThemeData.light().iconTheme.copyWith(
          color: kDarkSecondaryColor,
        ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MaterialColors.primary)),
    )
    // textTheme: ThemeData.light().textTheme.apply(
    //       fontFamily: 'SFProText',
    //       bodyColor: kDarkSecondaryColor,
    //       displayColor: kDarkSecondaryColor,
    //     ),
    );
