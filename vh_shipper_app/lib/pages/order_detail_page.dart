import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vh_shipper_app/widgets/order_ship.dart';
import 'package:vh_shipper_app/widgets/order_store.dart';

class OrderDetailPage extends StatefulWidget {
  int Status;
  OrderDetailPage({super.key, required this.Status});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    header() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
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
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Đơn hàng #F9838",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "SF Bold",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.Status == 1
                            ? "Di chuyển đến nhà hàng"
                            : "Di chuyển đến nơi giao hàng",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "SF Regular",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 28,
              ),
            ]),
      );
    }

    return Scaffold(
        // backgroundColor: Colors.white,
        body: Stack(alignment: Alignment.center, children: [
      Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    header(),
                    if (widget.Status == 1) ...[
                      const OrderStore()
                    ] else ...[
                      const OrderShip()
                    ]
                  ],
                ),
              ),
              if (widget.Status == 1)
                Positioned(
                    bottom: 0,
                    child: Container(
                        // height: 70,
                        decoration: BoxDecoration(color: Colors.white),
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 10),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: SlideAction(
                            alignment: Alignment.bottomCenter,
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontFamily: "SF Bold",
                                color: Colors.white),
                            // innerColor: Color.fromRGBO(219, 98, 71, 1),
                            outerColor: Color.fromARGB(255, 12, 120, 209),
                            innerColor: MaterialColors.secondary,
                            // text: "Chấp nhận" + ,
                            text: "Đã lấy đơn hàng",
                            height: 55,
                            sliderButtonIconSize: 35,
                            sliderRotate: false,
                            borderRadius: 10,
                            sliderButtonIconPadding: 15,
                            submittedIcon: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            sliderButtonYOffset: -8,
                            sliderButtonIcon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            onSubmit: () {
                              Future.delayed(
                                Duration(milliseconds: 200),
                                () => {
                                  Navigator.pop(context),
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OrderDetailPage(
                                        Status: 2,
                                      ),
                                    ),
                                  )
                                },
                              );
                            },
                          ),
                        )))
              else ...[
                Positioned(
                    bottom: 0,
                    child: Container(
                        // height: 70,
                        decoration: BoxDecoration(color: Colors.white),
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 10),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: SlideAction(
                            alignment: Alignment.bottomCenter,
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontFamily: "SF Bold",
                                color: Colors.white),
                            // innerColor: Color.fromRGBO(219, 98, 71, 1),
                            outerColor: Colors.green[500],
                            innerColor: Color.fromRGBO(10, 158, 36, 1),
                            // text: "Chấp nhận" + ,
                            text: "Hoàn thành đơn hàng",
                            height: 55,
                            sliderButtonIconSize: 35,
                            sliderRotate: false,
                            borderRadius: 10,
                            sliderButtonIconPadding: 15,
                            submittedIcon: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            sliderButtonYOffset: -8,
                            sliderButtonIcon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            onSubmit: () {
                              Future.delayed(
                                Duration(milliseconds: 200),
                                () => {
                                  Navigator.pop(context),
                                },
                              );
                            },
                          ),
                        ))),
              ]
            ],
          ))
    ]));
  }
}
