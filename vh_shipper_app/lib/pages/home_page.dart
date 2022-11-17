import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/provider/appProvider.dart';
import 'package:vh_shipper_app/widgets/colection_detail.dart';
import 'package:vh_shipper_app/pages/detail_remittance_history_page.dart';
import 'package:vh_shipper_app/widgets/order_accept_modal.dart';
import 'package:vh_shipper_app/widgets/order_done_modal.dart';
import 'package:vh_shipper_app/widgets/order_shipping_modal.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:vh_shipper_app/widgets/transaction_record.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool status = true;
  void _ModalAccept(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0))),
        builder: (BuildContext bc) {
          return OrderAcceptModal(function: (func) {});
        });
  }

  void _ModalShipping(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0))),
        builder: (BuildContext bc) {
          return OrderShippingModal(
              storeId: "", menuId: '', function: (func) {});
        });
  }

  void _ModalDone(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0))),
        builder: (BuildContext bc) {
          return OrderDoneModal(storeId: "", menuId: '', function: (func) {});
        });
  }

  statistical_order() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(200, 200, 200, 1)),
      ),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(children: [
                Container(
                  child: Icon(
                    Icons.today,
                    color: MaterialColors.primary,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  child: Text(
                    "17 Thag 11",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: "SF Bold",
                        fontSize: 16),
                  ),
                  onPressed: () {
                    _modalBottomSheetMenu();
                  },
                ),
              ]),
            ),
            Container(
              child: Row(children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_back_ios,
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 179, 176, 173)),
              ]),
            )
          ],
        ),
      ),
    );
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 350.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(55),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Chọn Khoảng Thời Gian",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: "SF Bold",
                                  fontSize: 15),
                            ),
                          ]),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        "Hôm nay",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 176, 173),
                                            fontFamily: "SF Bold",
                                            fontSize: 16),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.radio_button_unchecked,
                                          color: Color.fromARGB(
                                              255, 179, 176, 173)),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        "Hôm qua",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 176, 173),
                                            fontFamily: "SF Bold",
                                            fontSize: 16),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.radio_button_unchecked,
                                          color: Color.fromARGB(
                                              255, 179, 176, 173)),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        "Tuần này",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 176, 173),
                                            fontFamily: "SF Bold",
                                            fontSize: 16),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.radio_button_unchecked,
                                          color: Color.fromARGB(
                                              255, 179, 176, 173)),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        "Tuần Trước",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 176, 173),
                                            fontFamily: "SF Bold",
                                            fontSize: 16),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.radio_button_unchecked,
                                          color: Color.fromARGB(
                                              255, 179, 176, 173)),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        "Tháng này",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 176, 173),
                                            fontFamily: "SF Bold",
                                            fontSize: 16),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.radio_button_unchecked,
                                          color: Color.fromARGB(
                                              255, 179, 176, 173)),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        "Tháng trước",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 176, 173),
                                            fontFamily: "SF Bold",
                                            fontSize: 16),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.radio_button_unchecked,
                                          color: Color.fromARGB(
                                              255, 179, 176, 173)),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(children: [
                                      Text(
                                        "3 tháng gần nhất",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 179, 176, 173),
                                            fontFamily: "SF Bold",
                                            fontSize: 16),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(Icons.radio_button_unchecked,
                                          color: Color.fromARGB(
                                              255, 179, 176, 173)),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          );
        });
  }

  revenue() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Tổng quan đơn hàng  ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "SF Bold",
                            fontSize: 18),
                      ),
                      Icon(Icons.info,
                          size: 15, color: Color.fromARGB(255, 170, 165, 165)),
                    ],
                  ),
                ),
                Container(
                  child: Column(children: [
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 160.0,
                              height: 80.0,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:
                                      MaterialColors.primary.withOpacity(0.1),
                                  side: BorderSide(
                                    color: Color.fromARGB(114, 252, 255, 177),
                                    style: BorderStyle.solid,
                                    width: 1,
                                  ),
                                ),
                                onPressed: null,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Tổng Đơn',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "SF SemiBold",
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        '10 đơn hàng',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "SF SemiBold",
                                            color: MaterialColors.primary),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 160.0,
                              height: 80,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:
                                      MaterialColors.primary.withOpacity(0.1),
                                  side: BorderSide(
                                    color: Color.fromARGB(114, 252, 255, 177),
                                    style: BorderStyle.solid,
                                    width: 1,
                                  ),
                                ),
                                onPressed: null,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Thành Công',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "SF SemiBold",
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        '08 đơn hàng',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "SF SemiBold",
                                            color: MaterialColors.primary),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160.0,
                            height: 80,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor:
                                    MaterialColors.primary.withOpacity(0.1),
                                side: BorderSide(
                                  color: Color.fromARGB(114, 252, 255, 177),
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                              ),
                              onPressed: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'Đã Hủy',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "SF SemiBold",
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      '01 đơn hàng',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "SF SemiBold",
                                          color: MaterialColors.primary),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 160.0,
                            height: 80,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor:
                                    MaterialColors.primary.withOpacity(0.1),
                                side: BorderSide(
                                  color: Color.fromARGB(114, 252, 255, 177),
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                              ),
                              onPressed: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'Khách Hủy',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "SF SemiBold",
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      '01 đơn hàng',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "SF SemiBold",
                                          color: MaterialColors.primary),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(right: 15, top: 15),
                      child: Row(
                        children: [
                          Text(
                            "Tổng quan thu tiền  ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: "SF Bold",
                                fontSize: 18),
                          ),
                          Icon(Icons.info,
                              size: 15,
                              color: Color.fromARGB(255, 170, 165, 165)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160.0,
                            height: 80,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor:
                                    MaterialColors.primary.withOpacity(0.1),
                                side: BorderSide(
                                  color: Color.fromARGB(114, 252, 255, 177),
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                              ),
                              onPressed: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'Tổng Tiền Thu Hộ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "SF SemiBold",
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      '1,000,000 VND',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "SF SemiBold",
                                          color: MaterialColors.primary),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 160.0,
                            height: 80,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor:
                                    MaterialColors.primary.withOpacity(0.1),
                                side: BorderSide(
                                  color: Color.fromARGB(114, 252, 255, 177),
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                              ),
                              onPressed: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'Thu Hộ Tài Khoản',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "SF SemiBold",
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      '500,000 VND',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "SF SemiBold",
                                          color: MaterialColors.primary),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 160.0,
                              height: 80,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:
                                      MaterialColors.primary.withOpacity(0.1),
                                  side: BorderSide(
                                    color: Color.fromARGB(114, 252, 255, 177),
                                    style: BorderStyle.solid,
                                    width: 1,
                                  ),
                                ),
                                onPressed: null,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Thu Hộ Tiền Mặt',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        '500,000 VND',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "SF SemiBold",
                                            color: MaterialColors.primary),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 160.0,
                              height: 80.0,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  backgroundColor:
                                      MaterialColors.primary.withOpacity(0.1),
                                  side: BorderSide(
                                    color: Color.fromARGB(114, 252, 255, 177),
                                    style: BorderStyle.solid,
                                    width: 1,
                                  ),
                                ),
                                onPressed: null,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Khác',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "SF SemiBold",
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        '0 VND',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Bold",
                                            color: MaterialColors.primary),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  order_doing(segment) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(200, 200, 200, 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "#0123456",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "SF SemiBold",
                    fontSize: 16,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image(
                          // color:70olors.red,
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                          image: NetworkImage(segment == 0
                              ? "https://cdn-icons-png.flaticon.com/512/4521/4521931.png"
                              : "https://cdn-icons-png.flaticon.com/512/7541/7541900.png")),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          (segment == 0 ? "Lấy Hàng" : "Giao hàng"),
                          style: TextStyle(
                            fontFamily: "SF Medium",
                            color: MaterialColors.primary,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.room,
                    color: Colors.red,
                  ),
                ),
                Container(
                  child: Text(
                    " From ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "S1.07, Vinhomes Grand Park",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Text(
                    "   |",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.room,
                    color: Colors.green,
                  ),
                ),
                Container(
                  child: Text(
                    " To ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "S1.07, Vinhomes Grand Park",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Tiền mặt: ",
                        style: TextStyle(
                            color: Color.fromRGBO(80, 80, 80, 1), fontSize: 16),
                      ),
                      Text(
                        "50.000 VND",
                        style: TextStyle(
                            color: Color.fromRGBO(80, 80, 80, 1), fontSize: 16),
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
                        _ModalShipping(context);
                      },
                      child: Text('Chi tiết',
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

  handleToggle(val) {
    setState(() {
      status = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 50, bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                context.read<AppProvider>().getName,
                                style: TextStyle(
                                    color: MaterialColors.white,
                                    fontFamily: "SF Bold",
                                    fontSize: 18),
                              ),
                              Padding(padding: EdgeInsets.all(3)),
                              Text(
                                context.read<AppProvider>().getUserId,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SF Regular",
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              context.read<AppProvider>().getStatus
                                  ? "Sẵn sàng"
                                  : "Đang bận",
                              style: TextStyle(
                                  color:
                                      status ? Colors.green : Colors.grey[700],
                                  fontFamily: "SF Bold",
                                  fontSize: 18),
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            FlutterSwitch(
                              width: 60.0,
                              height: 30.0,
                              valueFontSize: 15.0,
                              toggleSize: 25.0,
                              value: status,
                              borderRadius: 30.0,
                              padding: 3.5,
                              activeColor: Colors.green,
                              // showOnOff: true,
                              onToggle: (val) {
                                handleToggle(val);
                                // setState(() {
                                //   status = val;
                                // });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Thống kê",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: "SF Bold",
                              fontSize: 18),
                        ),
                      )
                    ],
                  )),
                  statistical_order(),
                  revenue(),
                  Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Đang thực hiện",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "SF Bold",
                            fontSize: 18),
                      ),
                    ],
                  )),
                  order_doing(0),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: Text("Show Order accept"),
                          onPressed: () {
                            _ModalAccept(context);
                          },
                        ),
                        TextButton(
                          child: Text("Show Order Shipping"),
                          onPressed: () {
                            _ModalShipping(context);
                          },
                        ),
                        TextButton(
                          child: Text("Show Order Done"),
                          onPressed: () {
                            _ModalDone(context);
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
