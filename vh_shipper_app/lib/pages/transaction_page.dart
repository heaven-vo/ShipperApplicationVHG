import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  var way = Column(
    children: [
      SizedBox(
        height: kSpacingUnit * 1,
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: kSpacingUnit * 11,
              width: kSpacingUnit * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                color: Color.fromARGB(255, 243, 247, 251),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: kSpacingUnit * 1,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          height: kSpacingUnit * 2,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Tháng",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "9/2022",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 30),
                                child: Text(
                                  "|",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 184, 184, 184),
                                      fontSize: 30,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Thu:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text(
                                        "222.222đ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: kSpacingUnit * 0.5,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Chi:",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text(
                                        "111.111đ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 1,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Xem báo cáo tháng này",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.red,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );

  var deliver = Column(
    children: [
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: kSpacingUnit * 9.5,
              width: kSpacingUnit * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                color: Color.fromARGB(255, 243, 247, 251),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    height: kSpacingUnit * 6,
                    width: kSpacingUnit * 8,
                    margin: EdgeInsets.only(top: kSpacingUnit * 2),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 120,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: kSpacingUnit * 2.7,
                            width: kSpacingUnit * 2.7,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: kSpacingUnit * 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: kSpacingUnit * 1,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 70),
                          child: Row(
                            children: [
                              Text(
                                "Chuyển tiền đến công ty",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: kSpacingUnit * 0.5,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 155),
                          child: Row(
                            children: [
                              Text("11:11  - 01/01/2022"),
                            ],
                          ),
                        ),
                        Container(
                          height: kSpacingUnit * 4,
                          width: kSpacingUnit * 28,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kSpacingUnit * 1),
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );

  var deliver1 = Column(
    children: [
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: kSpacingUnit * 9.5,
              width: kSpacingUnit * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                color: Color.fromARGB(255, 243, 247, 251),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    height: kSpacingUnit * 6,
                    width: kSpacingUnit * 8,
                    margin: EdgeInsets.only(top: kSpacingUnit * 2),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 120,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: kSpacingUnit * 2.7,
                            width: kSpacingUnit * 2.7,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: kSpacingUnit * 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: kSpacingUnit * 1,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 100),
                          child: Row(
                            children: [
                              Text(
                                "Nhận tiền từ công ty",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: kSpacingUnit * 0.5,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 155),
                          child: Row(
                            children: [
                              Text("11:11  - 01/01/2022"),
                            ],
                          ),
                        ),
                        Container(
                          height: kSpacingUnit * 4,
                          width: kSpacingUnit * 28,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kSpacingUnit * 1),
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
                                      "+ 111.111 vnd",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );

  var deliver2 = Column(
    children: [
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: kSpacingUnit * 9.5,
              width: kSpacingUnit * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                color: Color.fromARGB(255, 243, 247, 251),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    height: kSpacingUnit * 6,
                    width: kSpacingUnit * 8,
                    margin: EdgeInsets.only(top: kSpacingUnit * 2),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 120,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: kSpacingUnit * 2.7,
                            width: kSpacingUnit * 2.7,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: kSpacingUnit * 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: kSpacingUnit * 1,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 55),
                          child: Row(
                            children: [
                              Text(
                                "Nạp tiền vào ví từ TPBank",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: kSpacingUnit * 0.5,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 155),
                          child: Row(
                            children: [
                              Text("11:11  - 01/01/2022"),
                            ],
                          ),
                        ),
                        Container(
                          height: kSpacingUnit * 4,
                          width: kSpacingUnit * 28,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kSpacingUnit * 1),
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
                                      "+ 111.111 vnd",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: kSpacingUnit * 0.5,
          ),
          way,
          SizedBox(
            height: kSpacingUnit * 0.5,
          ),
          deliver,
          SizedBox(
            height: kSpacingUnit * 0.5,
          ),
          deliver1,
          SizedBox(
            height: kSpacingUnit * 0.5,
          ),
          deliver2
        ],
      ),
    );
  }
}
