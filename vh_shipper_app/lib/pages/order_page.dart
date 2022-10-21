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
    var collectMoney = Column(
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
                margin: EdgeInsets.zero,
                height: kSpacingUnit * 10.5,
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
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Tổng phí ",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.red),
                                      ),
                                      Icon(
                                        Icons.report_gmailerrorred,
                                        size: 15,
                                        color: Color.fromARGB(255, 99, 92, 92),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "đ 0.00",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.red),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Nhận tiền mặt ",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.report_gmailerrorred,
                                        size: 15,
                                        color: Color.fromARGB(255, 99, 92, 92),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "đ 0.00",
                                        style: TextStyle(fontSize: 18),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Tổng tiền thu hộ ",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.report_gmailerrorred,
                                        size: 15,
                                        color: Color.fromARGB(255, 99, 92, 92),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "đ 0.00",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
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
            ],
          ),
        )
      ],
    );

    var service = Column(
      children: [
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.zero,
                height: kSpacingUnit * 10.5,
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
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Dịch vụ",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 184, 184, 184),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Giao ngay",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Dịch vụ kèm theo",
                                        style: TextStyle(fontSize: 18),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Hỗ trợ tài xế thời tiết xấu",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    "x1",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal),
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
        )
      ],
    );

    var noti = Column(
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
                height: kSpacingUnit * 7,
                width: kSpacingUnit * 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                  color: Color.fromARGB(255, 243, 247, 251),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: kSpacingUnit * 1,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Ghi chú từ khách hàng",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 184, 184, 184),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Xin khăn giấy, ít cay",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal),
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
        )
      ],
    );

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
                margin: EdgeInsets.zero,
                height: kSpacingUnit * 11.5,
                width: kSpacingUnit * 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                  color: Color.fromARGB(255, 243, 247, 251),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: kSpacingUnit * 1,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Lộ trình",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 184, 184, 184),
                                        fontSize: 20,
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
                                  Icons.location_on,
                                  color: Color.fromARGB(255, 54, 92, 244),
                                  size: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "S1 Toà 1, Đường số 1, Khu 1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "S1 Toà 1, Đường số 1, Khu 1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
            ],
          ),
        )
      ],
    );

    var product = Column(
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
                margin: EdgeInsets.zero,
                height: kSpacingUnit * 14.5,
                width: kSpacingUnit * 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kSpacingUnit * 1),
                  color: Color.fromARGB(255, 243, 247, 251),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: kSpacingUnit * 1,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Danh sách sản phẩm",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 184, 184, 184),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "đ 0.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: kSpacingUnit * 0.5,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "x1 ba con mèo",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    "đ 0.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: kSpacingUnit * 0.5,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "x1 ba con heo",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    "đ 0.00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                                "_________________________________________________________"),
                          ),
                          SizedBox(
                            height: kSpacingUnit * 0.5,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Xem chi tiết sản phẩm",
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
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: kSpacingUnit * 1.5,
          ),
          collectMoney,
          service,
          noti,
          product,
          SizedBox(
            height: kSpacingUnit * 0.5,
          ),
          way,
        ],
      ),
    );
  }
}
