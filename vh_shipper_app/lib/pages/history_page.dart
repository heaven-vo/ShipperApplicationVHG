import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/provider/appProvider.dart';
import 'package:vh_shipper_app/widgets/order_history_tab.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        OrderHistoryTab(),
        OrderHistoryTab(),
      ],
    );
  }
}
