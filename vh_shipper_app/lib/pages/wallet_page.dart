import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    var ATMInfor = Expanded(
      child: Column(children: [
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Container(
          height: kSpacingUnit * 17,
          width: kSpacingUnit * 30,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 3, 82, 151),
                Color.fromARGB(255, 58, 173, 223),
                Color.fromARGB(255, 25, 124, 185),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kSpacingUnit * 1,
              ),
              Container(
                padding: EdgeInsets.only(right: 160),
                child: Text(
                  "CARD NAME",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 1,
              ),
              Container(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  "VO CHI CONG",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 2,
              ),
              Container(
                padding: EdgeInsets.only(right: 110),
                child: Text(
                  "**** **** **** 1234",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 2,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "EXP DATE",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 25),
                            child: Text(
                              "00/00",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        "          ",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "CVV NUMBER",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 60),
                            child: Text(
                              "**0",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );

    var revenue = Expanded(
      child: Column(
        children: [
          SizedBox(
            height: kSpacingUnit * 1.5,
          ),
          Container(
            height: kSpacingUnit * 15,
            width: kSpacingUnit * 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 243, 247, 251),
              border: Border.all(color: Colors.black38),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: kSpacingUnit * 1,
                ),
                Container(
                  padding: EdgeInsets.only(right: 220),
                  child: Text(
                    "Hôm nay",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: kSpacingUnit * 1.5,
                ),
                Container(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    "0.00 đ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: kSpacingUnit * 0.5,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "        ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.event_available,
                                size: 30,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 85),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        " ",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        " đơn hàng hoàn tất",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Theme.of(context).accentColor),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),
                                onPressed: null,
                                child: Text('Xem chi tiết',
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 255, 255, 255))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    var collection = Column(
      children: [
        Container(
          height: kSpacingUnit * 20,
          width: kSpacingUnit * 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 243, 247, 251),
            border: Border.all(color: Colors.black38),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kSpacingUnit * 0.5,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Số dư",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "0.00 đ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "___________________________________________________",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 2,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.input,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Nạp tiền",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.monetization_on,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Rút tiền",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Container(
                            child: Icon(
                              Icons.assignment_turned_in,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.only(right: 55),
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Lịch sử giao dịch",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );

    var bonous = Expanded(
      child: Column(
        children: [
          Container(
            height: kSpacingUnit * 10,
            width: kSpacingUnit * 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 243, 247, 251),
              border: Border.all(color: Colors.black38),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: kSpacingUnit * 1,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Thưởng",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "0.00 đ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Phạt",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "0.00 đ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
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
      ),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: kSpacingUnit * 3,
        ),
        ATMInfor,
        SizedBox(
          width: kSpacingUnit * 2,
        ),
      ],
    );

    return ListView(
      children: [
        SizedBox(
          height: kSpacingUnit * 1.5,
        ),
        header,
        SizedBox(
          height: kSpacingUnit * 3,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Tổng kết danh thu",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1.5,
        ),
        collection,
        SizedBox(
          height: kSpacingUnit * 3,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Danh thu thu hộ",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
        revenue,
        SizedBox(
          height: kSpacingUnit * 3,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Danh thu bổ xung",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1.5,
        ),
        bonous,
        SizedBox(
          height: kSpacingUnit * 5,
        ),
      ],
    );
  }
}
