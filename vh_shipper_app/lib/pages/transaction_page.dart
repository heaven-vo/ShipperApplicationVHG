import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/detail_remittance_history_page.dart';
import 'package:vh_shipper_app/widgets/colection_detail.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  transactionTitle() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 247, 251),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Lọc theo",
                  style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                      fontSize: 14,
                      fontFamily: "SF Regular"),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(kSpacingUnit * 2),
                      border: Border.all(color: MaterialColors.primary)),
                  child: Text(
                    "1 Tháng gần nhất",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 14,
                        fontFamily: "SF Regular"),
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
            color: Colors.white,
            child: Row(
              children: [
                Text(
                  "5 giao dịch",
                  style: TextStyle(fontSize: 17, fontFamily: "SF SemiBold"),
                ),
              ],
            ),
          ),
          // Container(
          //   color: MaterialColors.primary.withOpacity(0.2),
          //   child: Row(
          //     children: [
          //       Container(
          //         padding:
          //             EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
          //         child: Text(
          //           "11/11/2022 Thứ Năm",
          //           style: TextStyle(
          //               fontSize: 13.5,
          //               color: MaterialColors.primary,
          //               fontFamily: "SF Medium"),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
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
              color: MaterialColors.primary.withOpacity(0.1),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
                    child: Text(
                      "11/11/2022 Thứ Năm",
                      style: TextStyle(
                          fontSize: 13.5,
                          color: MaterialColors.primary,
                          fontFamily: "SF Medium"),
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
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "TRẢ PHÍ THU HỘ",
                                    style: TextStyle(
                                        fontFamily: "SF Regular", fontSize: 15),
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
                                  Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(
                                        'assets/images/red-tag.png',
                                        fit: BoxFit.cover,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.5),
                                        colorBlendMode: BlendMode.modulate),
                                  ),
                                  SizedBox(
                                    width: kSpacingUnit * 0.5,
                                  ),
                                  Text(
                                    " Chuyển tiền đi",
                                    style: TextStyle(
                                        fontFamily: "SF Regular",
                                        fontSize: 14,
                                        color:
                                            Color.fromRGBO(120, 120, 120, 1)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: kSpacingUnit * 1,
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

  revenue() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 0),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(200, 200, 200, 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tháng 11",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontFamily: "SF SemiBold"),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "0.00 đ",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: "SF Bold"),
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.event_available,
                    size: 20,
                    color: Color.fromRGBO(80, 80, 80, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                            color: Color.fromRGBO(80, 80, 80, 1), fontSize: 14),
                      ),
                      Text(
                        " đơn hàng hoàn tất",
                        style: TextStyle(
                            color: Color.fromRGBO(80, 80, 80, 1), fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            MaterialColors.primary),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ColectionDetail()));
                      },
                      child: Text('Xem chi tiết',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16,
                              fontFamily: "SF SemiBold")),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            revenue(),
            transactionTitle(),
            Container(
              height: MediaQuery.of(context).size.height - 378,
              child: SingleChildScrollView(
                child: Column(children: [
                  // SizedBox(
                  //   height: kSpacingUnit * 0.7,
                  // ),
                  ...[1, 2, 3, 4, 5]
                      .map((item) => InkWell(
                            child: transactionItem(item),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailRemittanceHistory()));
                            },
                          ))
                      .toList(),
                  SizedBox(
                    height: kSpacingUnit * 0.5,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
