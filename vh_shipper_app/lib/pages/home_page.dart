import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/provider/appProvider.dart';
import 'package:vh_shipper_app/widgets/colection_detail.dart';
import 'package:vh_shipper_app/widgets/detail_remittance_history.dart';
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

  revenue() {
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
          Text(
            "Hôm nay",
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

  order_doing() {
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
                Container(
                  child: Row(
                    children: [
                      Text(
                        "#0123456",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.shopping_bag,
                          color: MaterialColors.primary,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Lấy hàng",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
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
                        "Thanh toán: ",
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
                            Color(0xfff7892b).withOpacity(0.9),
                            Color(0xfff7892b).withOpacity(0.8),
                            MaterialColors.primary,
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
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Tiền thu hộ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: "SF Bold",
                          fontSize: 18),
                    ),
                  ),
                  revenue(),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Đang thực hiện",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: "SF Bold",
                          fontSize: 18),
                    ),
                  ),
                  order_doing(),
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
