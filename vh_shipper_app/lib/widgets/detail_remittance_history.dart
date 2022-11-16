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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            "SỐ TIỀN GIAO DỊCH",
            style: TextStyle(
              color: MaterialColors.primary,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1,
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
          height: kSpacingUnit * 1,
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "Từ tài khoản",
                  style: TextStyle(
                    color: MaterialColors.primary,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "VO CHI CONG",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontFamily: "SF Bold",
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Container(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "0123 4567 8910",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1,
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
                    color: MaterialColors.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "11:11 11/11/2022",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontFamily: "SF Bold"),
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
                    color: MaterialColors.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "Chi Tiêu Thẻ ATM",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontFamily: "SF Bold"),
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
                  "Nội dung chuyển tiền",
                  style: TextStyle(
                    color: MaterialColors.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "nap tien vao vi app",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontFamily: "SF Bold"),
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
                  "Cách thức",
                  style: TextStyle(
                    color: MaterialColors.primary,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                //flex: 6,
                child: Text(
                  "OYJHK83738434A",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontFamily: "SF Bold"),
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
            centerTitle: true,
            elevation: 10.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            shadowColor: MaterialColors.primary,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 25,
                  ),
                );
              },
            ),
            title: Text(
              "Chi tiết giao dịch",
              style:
                  TextStyle(color: MaterialColors.black, fontFamily: "SF Bold"),
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
                SizedBox(
                  height: kSpacingUnit * 0.5,
                ),
                historyTime()
              ],
            ),
          ),
        );
      },
    );
  }
}
