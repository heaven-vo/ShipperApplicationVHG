import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/widgets/trip_detail.dart';

class ListOrderAceeptPage extends StatefulWidget {
  const ListOrderAceeptPage({Key? key}) : super(key: key);

  @override
  _ListOrderAceeptPageState createState() => _ListOrderAceeptPageState();
}

class _ListOrderAceeptPageState extends State<ListOrderAceeptPage> {
  order_item() {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: const Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(220, 220, 220, 1),
                    ),
                    child: Text(
                      "Đang tìm",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(80, 80, 80, 1),
                        fontFamily: "SF Medium",
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "5 điểm đến",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(170, 170, 170, 1),
                              fontFamily: "SF Regular",
                            ),
                          ),
                          SizedBox(width: 3),
                          Text(
                            "-",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(170, 170, 170, 1),
                              fontFamily: "SF Regular",
                            ),
                          ),
                          SizedBox(width: 3),
                          Text(
                            "đ320.000",
                            style: TextStyle(
                              fontSize: 14,
                              color: MaterialColors.primary,
                              fontFamily: "SF Medium",
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text(
                            "Tổng tiền thu hộ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(170, 170, 170, 1),
                              fontFamily: "SF Regular",
                            ),
                          ),
                          Text(
                            ": ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(170, 170, 170, 1),
                              fontFamily: "SF Regular",
                            ),
                          ),
                          Text(
                            "đ320.000",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(50, 50, 50, 1),
                              fontFamily: "SF Medium",
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text(
                            "Số gói hàng",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(170, 170, 170, 1),
                              fontFamily: "SF Regular",
                            ),
                          ),
                          Text(": ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(170, 170, 170, 1),
                                fontFamily: "SF Regular",
                              )),
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(50, 50, 50, 1),
                              fontFamily: "SF Medium",
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: MaterialColors.primary,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3, bottom: 3),
                      width: 1,
                      height: 10,
                      color: Color.fromRGBO(200, 200, 200, 1),
                    ),
                    Icon(Icons.circle_outlined,
                        size: 12,
                        color: MaterialColors.primary.withOpacity(0.6)),
                    Container(
                      margin: EdgeInsets.only(top: 3, bottom: 3),
                      width: 1,
                      height: 10,
                      color: Color.fromRGBO(200, 200, 200, 1),
                    ),
                    Icon(
                      Icons.circle_outlined,
                      size: 12,
                      color: Color.fromRGBO(200, 200, 200, 1),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "S2.05, Vinhomes Grand Park, Phường Long Thạnh Mỹ, Quận 9",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(20, 20, 20, 1),
                          fontFamily: "SF Medium",
                          overflow: TextOverflow.ellipsis),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 6, bottom: 6),
                    ),
                    Text(
                      "+3 điểm đến...",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(170, 170, 170, 1),
                          fontFamily: "SF Medium",
                          overflow: TextOverflow.ellipsis),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 6, bottom: 6),
                    ),
                    Text(
                      "S5.05, Vinhomes Grand Park, Phường Long Thạnh Mỹ, Quận 9",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(20, 20, 20, 1),
                          fontFamily: "SF Medium",
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ))
              ],
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 5,
        ),
        ...[1, 2, 3]
            .map((item) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TripDetail(Status: 1),
                      ),
                    );
                  },
                  child: order_item(),
                ))
            .toList()
      ]),
    ));
  }
}
