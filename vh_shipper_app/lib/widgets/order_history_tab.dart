import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class OrderHistoryTab extends StatefulWidget {
  const OrderHistoryTab({Key? key}) : super(key: key);

  @override
  _OrderHistoryTabState createState() => _OrderHistoryTabState();
}

historyTitle(title) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(kSpacingUnit * 1),
      color: Color.fromARGB(255, 243, 247, 251),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontFamily: "SF Bold"),
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

historyItem(index) {
  return Container(
    padding: EdgeInsets.only(right: 15, top: 15, bottom: 15, left: 15),
    color: index % 2 == 1 ? Colors.white : Color.fromRGBO(250, 250, 250, 1),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                      height: 35,
                      width: 35,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset(
                          getIconOrder("1"),
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bún thịt nướng 5 ngon",
                    style: TextStyle(fontFamily: "SF SemiBold", fontSize: 16),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 0.5,
                  ),
                  Text(
                    "45.000",
                    style: TextStyle(fontFamily: "SF Regular", fontSize: 14),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 0.5,
                  ),
                  Text(
                    "Giao hàng",
                    style: TextStyle(
                        fontFamily: "SF Regular",
                        fontSize: 14,
                        color: Colors.black38),
                  ),
                ],
              ),
              //SizedBox(
              //width: 45,
              //),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "17:05, 09/09/2022",
              style: TextStyle(
                  fontFamily: "SF Regular",
                  fontSize: 13,
                  color: Colors.black38),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 5, top: 5),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Thành công",
                  style: TextStyle(
                      fontFamily: "SF Medium",
                      fontSize: 13,
                      color: Colors.white),
                ))
          ],
        ),
      ],
    ),
  );
}

class _OrderHistoryTabState extends State<OrderHistoryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kSpacingUnit * 1.5,
            ),
            historyTitle("Hôm nay"),
            ...[
              1,
              2,
            ].map((item) => historyItem(item)).toList(),
            SizedBox(
              height: kSpacingUnit * 0.5,
            ),
            historyTitle("Cũ hơn"),
            ...[1, 2, 3, 4, 5].map((item) => historyItem(item)).toList(),
            SizedBox(
              height: kSpacingUnit * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
