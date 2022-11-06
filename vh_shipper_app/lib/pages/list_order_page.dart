import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/order_detail_page.dart';
import 'package:vh_shipper_app/widgets/accordion_order.dart';

class ListOrderPage extends StatefulWidget {
  const ListOrderPage({super.key});

  @override
  State<ListOrderPage> createState() => _ListOrderPageState();
}

class _ListOrderPageState extends State<ListOrderPage> {
  var location = 0;
  header() {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(color: Colors.white
          // gradient: LinearGradient(
          //     begin: Alignment.centerLeft,
          //     end: Alignment.centerRight,
          //     colors: [
          //       Color(0xfff7892b).withOpacity(0.9),
          //       Color(0xfff7892b).withOpacity(0.8),
          //       MaterialColors.primary,
          //     ]),
          ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Task #F9838",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "SF Bold",
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "5 Đơn hàng",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "SF Regular",
                    color: Colors.black,
                  ),
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

  collectMoney() {
    return Container(
      // width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
      ),
      child: Column(
        children: [
          Column(
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
                          fontFamily: "SF Medium",
                          color: Color(0xfff7892b),
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
                    "50.000 đ",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "SF Medium",
                      color: Color(0xfff7892b),
                    ),
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
                    "50.000 đ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  way(status) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          // height: kSpacingUnit * 7,
          // width: kSpacingUnit * 40,

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromRGBO(220, 220, 220, 1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getStatusName(status),
                      style: TextStyle(
                        fontFamily: "SF Medium",
                        color: getColor(status),
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderDetailPage(Status: 1),
                          ),
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 5, right: 5, top: 3, bottom: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border:
                                  Border.all(color: MaterialColors.primary)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Xem chi tiết",
                                style: TextStyle(
                                  fontFamily: "SF SemiBold",
                                  color: MaterialColors.primary,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 3),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 10,
                                color: MaterialColors.primary,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Image(
                            // color:70olors.red,
                            height: 16,
                            width: 16,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/1946/1946770.png")),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      color: Color.fromRGBO(200, 200, 200, 1),
                                      width: 1))),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.info,
                          size: 16,
                          color: Color.fromRGBO(255, 206, 2, 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bếp Việt T13/07, MANHATTAN , Vinhomes Grand Park, Phường Long Thạnh Mỹ, Quận 9 13 123 123",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "SF Regular",
                                overflow: TextOverflow.ellipsis,
                                height: 1.3),
                            maxLines: 2,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "S2.05, Vinhomes Grand Park, Phường Long Thạnh Mỹ, Quận 9",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: "SF Regular",
                                height: 1.3),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Color getColor(status) {
    switch (status) {
      case StatusAccordionOrder.create:
        return const Color.fromRGBO(150, 150, 150, 1);
      case StatusAccordionOrder.doing:
        return MaterialColors.primary;
      case StatusAccordionOrder.done:
        return Colors.green;
      case StatusAccordionOrder.fail:
        return Colors.red;

      default:
        return const Color.fromRGBO(150, 150, 150, 1);
    }
  }

  String getStatusName(status) {
    switch (status) {
      case StatusAccordionOrder.create:
        return "Chưa làm";
      case StatusAccordionOrder.doing:
        return "Đang làm";
      case StatusAccordionOrder.done:
        return "Hoàn thành";
      case StatusAccordionOrder.fail:
        return "Đã hủy";

      default:
        return "Chưa làm";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color.fromRGBO(245, 245, 245, 1),
                height: 20,
              ),
              header(),
              collectMoney(),
              Container(
                color: Color.fromRGBO(245, 245, 245, 1),
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(children: [
                  Text(
                    "Lộ Trình",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(150, 150, 150, 1),
                        fontFamily: "SF SemiBold",
                        height: 1.3),
                  ),
                  Text(
                    " - ",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(150, 150, 150, 1),
                        fontFamily: "SF SemiBold",
                        height: 1.3),
                  ),
                  Text(
                    "5 lộ trình",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontFamily: "SF SemiBold",
                        height: 1.3),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: getColor(StatusAccordionOrder.fail))),
                child: AccordionOrder(
                  status: StatusAccordionOrder.fail,
                  content: way(StatusAccordionOrder.fail),
                  title: "Đơn hàng #093828",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: getColor(StatusAccordionOrder.done))),
                child: AccordionOrder(
                  status: StatusAccordionOrder.done,
                  content: way(StatusAccordionOrder.done),
                  title: "Đơn hàng #093828",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: getColor(StatusAccordionOrder.doing))),
                child: AccordionOrder(
                  status: StatusAccordionOrder.doing,
                  content: way(StatusAccordionOrder.doing),
                  title: "Đơn hàng #093828",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: getColor(StatusAccordionOrder.create))),
                child: AccordionOrder(
                  status: StatusAccordionOrder.create,
                  content: way(StatusAccordionOrder.create),
                  title: "Đơn hàng #093828",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: getColor(StatusAccordionOrder.create))),
                child: AccordionOrder(
                  status: StatusAccordionOrder.create,
                  content: way(StatusAccordionOrder.create),
                  title: "Đơn hàng #093828",
                ),
              ),
            ],
          ),
        ));
  }
}
