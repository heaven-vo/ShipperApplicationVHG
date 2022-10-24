import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    var collectMoney = Container(
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          SizedBox(
            height: kSpacingUnit * 1.5,
          ),
          Container(
            // height: kSpacingUnit * 10.5,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit * 1),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tổng phí ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        ),
                        Icon(
                          Icons.report_gmailerrorred,
                          size: 16,
                          color: Color.fromARGB(255, 99, 92, 92),
                        ),
                      ],
                    ),
                    Text(
                      "0.00 đ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: kSpacingUnit * 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Nhận tiền mặt ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.report_gmailerrorred,
                          size: 15,
                          color: Color.fromARGB(255, 99, 92, 92),
                        ),
                      ],
                    ),
                    Text(
                      "0.00 đ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: kSpacingUnit * 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tổng tiền thu hộ ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.report_gmailerrorred,
                          size: 15,
                          color: Color.fromARGB(255, 99, 92, 92),
                        ),
                      ],
                    ),
                    Text(
                      "0.00 đ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

    var service = Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Container(
          padding: EdgeInsets.all(15),
          // height: kSpacingUnit * 10.5,
          // width: kSpacingUnit * 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit * 1),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text(
                                "Dịch vụ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 184, 184, 184),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.only(right: 15),
                          child: Row(
                            children: [
                              Text(
                                "Giao ngay 30 phút",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontFamily: "SF SemiBold",
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 1.5,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Text(
                                "Dịch vụ kèm theo",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 1.5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: EdgeInsets.only(left: 30),
                          child: Text(
                            "Hỗ trợ tài xế thời tiết xấu",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SF SemiBold",
                            ),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.only(right: 30),
                          child: Text(
                            "x1",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SF SemiBold",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));

    var noti = Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        padding: EdgeInsets.all(15),
        // height: kSpacingUnit * 7,
        // width: kSpacingUnit * 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSpacingUnit * 1),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Ghi chú từ khách hàng",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(160, 160, 160, 1),
                                    fontFamily: "SF Regular"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 1.5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Xin khăn giấy, ít cay",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SF SemiBold",
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

    var way = Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: Container(
          padding: EdgeInsets.all(15),
          // height: kSpacingUnit * 7,
          // width: kSpacingUnit * 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit * 1),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Lộ trình",
                        style: TextStyle(
                          color: Color.fromARGB(255, 184, 184, 184),
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 1.5,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 54, 92, 244),
                      size: 20,
                    ),
                    SizedBox(
                      width: kSpacingUnit * 1,
                    ),
                    Container(
                      child: Text(
                        "S1 Toà 1, Đường số 1, Khu 1",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "SF SemiBold"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 5, bottom: 5),
                      child: Text(
                        "|",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      width: kSpacingUnit * 1,
                    ),
                    Container(
                      child: Text(
                        "S1 Toà 1, Đường số 1, Khu 1",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "SF SemiBold"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));

    var product = Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: Container(
          padding: EdgeInsets.all(15),
          // height: kSpacingUnit * 7,
          // width: kSpacingUnit * 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit * 1),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Danh sách sản phẩm",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(160, 160, 160, 1),
                                fontFamily: "SF Regular"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 1.5,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1 x",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "SF SemiBold"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ba con heo",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "SF SemiBold"),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        "0.00đ",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "SF SemiBold"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 1.5,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1 x",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "SF SemiBold"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ba con heo",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "SF SemiBold"),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        "0.00đ",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "SF SemiBold"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: kSpacingUnit * 1.5,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Color.fromRGBO(220, 220, 220, 1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Xem chi tiết sản phẩm",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontFamily: "SF SemiBold"),
                    ),
                    Container(
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.green,
                        size: 24,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));

    return Scaffold(
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
      child: Column(
        children: [
          collectMoney,
          service,
          noti,
          product,
          way,
        ],
      ),
    ));
  }
}
