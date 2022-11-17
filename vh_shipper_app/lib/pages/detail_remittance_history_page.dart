import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/home_page.dart';
import 'package:vh_shipper_app/provider/appProvider.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

class DetailRemittanceHistory extends StatefulWidget {
  const DetailRemittanceHistory({super.key});

  @override
  State<DetailRemittanceHistory> createState() =>
      _DetailRemittanceHistoryState();
}

historyTitle() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Text(
            "SỐ TIỀN GIAO DỊCH",
            style: TextStyle(
                color: MaterialColors.primary,
                fontSize: 17,
                fontFamily: "SF Medium"),
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1.5,
        ),
        Container(
          child: Text(
            "+ 1,000,000 VND",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1.5,
        ),
      ],
    ),
  );
}

historyInfor() {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "Tài khoản giao dịch",
                  style: TextStyle(
                    color: MaterialColors.primary.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Text(
          "Phạm Văn Dương".toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: "SF SemiBold",
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 0.5,
        ),
        Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "Shipper1@gmail.com",
                  style: TextStyle(
                    color: Color.fromRGBO(100, 100, 100, 1),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom:
                  BorderSide(color: Color.fromRGBO(240, 240, 240, 1), width: 1),
            ),
          ),
          margin: EdgeInsets.only(top: 30),
        ),
      ],
    ),
  );
}

historyTime() {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //flex: 6,
                child: Text(
                  "Thời gian thực hiện",
                  style: TextStyle(
                    color: MaterialColors.primary.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "11:11 11/11/2022",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontFamily: "SF Medium"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 2.5,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //flex: 6,
                child: Text(
                  "Mã giao dịch",
                  style: TextStyle(
                    color: MaterialColors.primary.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "99983V929A",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontFamily: "SF Medium"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 2.5,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //flex: 6,
                child: Text(
                  "Danh mục",
                  style: TextStyle(
                    color: MaterialColors.primary.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "Thu hộ đơn hàng",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontFamily: "SF Medium"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 2.5,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //flex: 6,
                child: Text(
                  "Trạng thái",
                  style: TextStyle(
                    color: MaterialColors.primary.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "Thành công",
                  style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 15,
                      fontFamily: "SF Medium"),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _DetailRemittanceHistoryState extends State<DetailRemittanceHistory> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white, //change your color here
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      MaterialColors.primary,
                      MaterialColors.primary.withOpacity(0.99),
                      MaterialColors.primary.withOpacity(0.97),
                      MaterialColors.primary.withOpacity(0.95),
                      MaterialColors.primary.withOpacity(0.9),
                    ]),
              ),
            ),
            centerTitle: true,
            shadowColor: MaterialColors.primary,
            title: Text(
              "Chi tiết giao dịch",
              style: TextStyle(color: Colors.white, fontFamily: "SF Bold"),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: kSpacingUnit * 3,
                ),
                historyTitle(),
                SizedBox(
                  height: kSpacingUnit * 0.5,
                ),
                historyInfor(),
                historyTime()
              ],
            ),
          ),
        );
      },
    );
  }
}
