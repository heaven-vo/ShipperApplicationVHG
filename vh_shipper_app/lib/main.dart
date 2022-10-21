import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/notification_page.dart';
import 'package:vh_shipper_app/pages/order_page.dart';
import 'package:vh_shipper_app/pages/root_app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: kDarkTheme,
      theme: kLightTheme,
      home: RootApp(),
      //home: OrderPage(),
    ),
  );
}
