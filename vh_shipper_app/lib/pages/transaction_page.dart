import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  transactionTitle() {
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
                    "Lọc theo",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                        fontFamily: "SF Bold"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: kSpacingUnit * 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            color: Colors.white,
            child: Row(
              children: [
                Text(
                  "5 giao dịch",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  var deliver = Row(
    children: [
      Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(kSpacingUnit * 1),
          color: Color.fromARGB(255, 243, 247, 251),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Chuyển tiền đến công ty",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Text("11:11  - 01/01/2022"),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                    color: Color.fromARGB(255, 243, 247, 251),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text("Số dư ví: **********"),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "- 111.111 vnd",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );

  transactionItem(index) {
    return Container(
        color: index % 2 == 1 ? Colors.white : Color.fromRGBO(250, 250, 250, 1),
        child: Column(
          children: [
            Container(
              color: MaterialColors.primary,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: Text(
                      "11/11/2022 - Thứ Năm",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(right: 15, top: 15, bottom: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: kSpacingUnit * 0.5,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "TRẢ HÓA ĐƠN PHÍ THU HỘ",
                                    style: TextStyle(
                                        fontFamily: "SF Regular", fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: kSpacingUnit * 0.5,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.label,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    " Chuyển tiền đi",
                                    style: TextStyle(
                                        fontFamily: "SF Regular", fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    "- 100.000 VND",
                    style: TextStyle(fontFamily: "SF SemiBold", fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ));
  }

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
            transactionTitle(),
            SizedBox(
              height: kSpacingUnit * 0.7,
            ),
            ...[1, 2, 3, 4, 5].map((item) => transactionItem(item)).toList(),
            SizedBox(
              height: kSpacingUnit * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
