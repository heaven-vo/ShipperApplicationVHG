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
                    "Tháng 9/2022",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontFamily: "SF Bold"),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_downward,
                                    color: Colors.blue,
                                    size: 18,
                                  ),
                                  Container(
                                    child: Text(
                                      "Thu:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "SF Regular"),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "500.000đ",
                                  style: TextStyle(
                                      fontSize: 14, fontFamily: "SF Regular"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: kSpacingUnit * 1,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                  Container(
                                    child: Text(
                                      "Chi:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "SF Regular"),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text(
                                  "1.500.000đ",
                                  style: TextStyle(
                                      fontSize: 14, fontFamily: "SF Regular"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: kSpacingUnit * 1,
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color.fromRGBO(255, 170, 76, 1).withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Xem báo cáo tháng này",
                  style: TextStyle(
                      fontSize: 17,
                      color: MaterialColors.primary,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Icon(
                    Icons.navigate_next,
                    color: MaterialColors.primary,
                    size: 28,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  var deliver = Row(
    // mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
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

  // var deliver1 = Column(
  //   children: [
  //     Container(
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Container(
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(kSpacingUnit * 1),
  //               color: Color.fromARGB(255, 243, 247, 251),
  //             ),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Container(
  //                   child: Stack(
  //                     children: [
  //                       CircleAvatar(
  //                         radius: 120,
  //                       ),
  //                       Align(
  //                         alignment: Alignment.bottomRight,
  //                         child: Container(
  //                           // height: kSpacingUnit * 2.7,
  //                           // width: kSpacingUnit * 2.7,
  //                           child: Icon(
  //                             Icons.check_circle,
  //                             color: Colors.green,
  //                             size: kSpacingUnit * 3,
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 Container(
  //                   child: Column(
  //                     children: [
  //                       SizedBox(
  //                         height: kSpacingUnit * 1,
  //                       ),
  //                       Container(
  //                         child: Row(
  //                           children: [
  //                             Text(
  //                               "Nhận tiền từ công ty",
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         height: kSpacingUnit * 0.5,
  //                       ),
  //                       Container(
  //                         child: Row(
  //                           children: [
  //                             Text("11:11  - 01/01/2022"),
  //                           ],
  //                         ),
  //                       ),
  //                       Container(
  //                         // height: kSpacingUnit * 4,
  //                         // width: kSpacingUnit * 28,
  //                         decoration: BoxDecoration(
  //                           borderRadius:
  //                               BorderRadius.circular(kSpacingUnit * 1),
  //                           color: Color.fromARGB(255, 243, 247, 251),
  //                         ),
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Container(
  //                               child: Row(
  //                                 children: [
  //                                   Text("Số dư ví: **********"),
  //                                 ],
  //                               ),
  //                             ),
  //                             Container(
  //                               child: Row(
  //                                 children: [
  //                                   Text(
  //                                     "+ 111.111 vnd",
  //                                     style: TextStyle(
  //                                         fontSize: 20,
  //                                         fontWeight: FontWeight.bold),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       )
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   ],
  // );

  transactionItem(index) {
    return Container(
      padding: EdgeInsets.only(right: 15, top: 15, bottom: 15, left: 15),
      color: index % 2 == 1 ? Colors.white : Color.fromRGBO(250, 250, 250, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // color: Color.fromRGBO(200, 200, 200, 1),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(kSpacingUnit * 1),
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        height: kSpacingUnit * 5.5,
                        width: kSpacingUnit * 5.5,
                        child: Container(
                          height: kSpacingUnit * 5,
                          width: kSpacingUnit * 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromRGBO(200, 200, 200, 1))),
                          child: const Center(
                            child: Image(
                                // color:70olors.red,
                                height: 20,
                                width: 20,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://firebasestorage.googleapis.com/v0/b/deliveryfood-9c436.appspot.com/o/icon%2Fwallet.png?alt=media&token=49ac71c1-04e2-4e65-ae48-fbe255daeca9")),
                          ),
                        )),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: kSpacingUnit * 2.2,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Nạp tiền vào ví từ TPBank",
                            style: TextStyle(
                                fontFamily: "SF SemiBold", fontSize: 16),
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
                          Text(
                            "11:11  - 01/01/2022",
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
                          Text(
                            "Số dư ví: **********",
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
            "+100.000",
            style: TextStyle(fontFamily: "SF SemiBold", fontSize: 16),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: kSpacingUnit * 1.5,
          ),
          transactionTitle(),

          ...[1, 2, 3, 4, 5].map((item) => transactionItem(item)).toList(),
          SizedBox(
            height: kSpacingUnit * 0.5,
          ),
          // deliver1,
          // SizedBox(
          //   height: kSpacingUnit * 0.5,
          // ),
          // deliver2
        ],
      ),
    ));
  }
}
