import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/order_detail_page.dart';
import 'package:vh_shipper_app/widgets/accordion_order.dart';

class OrderStore extends StatefulWidget {
  const OrderStore({Key? key}) : super(key: key);

  @override
  _OrderStoreState createState() => _OrderStoreState();
}

class _OrderStoreState extends State<OrderStore> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    if (phoneNumber != "") {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    }
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

  note() {
    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(15),
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
                                    fontSize: 16,
                                    fontFamily: "SF Medium",
                                    color: Color.fromRGBO(170, 170, 170, 1)),
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
  }

  dialogOrder() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        insetPadding: EdgeInsets.all(15),
        actionsPadding: EdgeInsets.all(15),
        titlePadding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
        title: const Text(
          'Chi tiết đơn hàng',
          style: TextStyle(
              color: Colors.black, fontFamily: "SF Bold", fontSize: 18),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 0, top: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1 x",
                        style: const TextStyle(
                            color: MaterialColors.black,
                            fontFamily: "SF Regular",
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Kebab Thịt heo",
                          style: const TextStyle(
                              color: MaterialColors.black,
                              fontFamily: "SF Regular",
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "₫ 25.000",
                  style: const TextStyle(
                      color: MaterialColors.black,
                      fontFamily: "SF Regular",
                      fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 0, top: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1 x",
                        style: const TextStyle(
                            color: MaterialColors.black,
                            fontFamily: "SF Regular",
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Kebab Thịt heo đặc biệt có phô mai mai mai",
                          style: const TextStyle(
                              color: MaterialColors.black,
                              fontFamily: "SF Regular",
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "₫ 25.000",
                  style: const TextStyle(
                      color: MaterialColors.black,
                      fontFamily: "SF Regular",
                      fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color.fromRGBO(230, 230, 230, 1)))),
          ),
          Row(
            children: [
              Text(
                "Ghi chú khách hàng",
                style: const TextStyle(
                    color: MaterialColors.black,
                    fontFamily: "SF Medium",
                    fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(240, 240, 240, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 48,
                      ),
                      child: Text(
                        "Xin ớt",
                        style: const TextStyle(
                            color: MaterialColors.black,
                            fontFamily: "SF Medium",
                            fontSize: 16),
                      ),
                    )),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color.fromRGBO(230, 230, 230, 1)))),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trả tiền mặt cho nhà hàng",
                style: TextStyle(
                    color: Color.fromRGBO(150, 150, 150, 1),
                    fontFamily: "SF Regular",
                    fontSize: 16),
              ),
              Text(
                "đ50.000",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "SF Semibold",
                    fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tổng cộng",
                style: TextStyle(
                    color: Color.fromRGBO(150, 150, 150, 1),
                    fontFamily: "SF Regular",
                    fontSize: 16),
              ),
              Text(
                "đ50.000",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "SF Semibold",
                    fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        child: Text(
                          "Đóng",
                          style: TextStyle(
                              color: Colors.black45,
                              fontFamily: "SF Medium",
                              fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          textStyle: TextStyle(color: Colors.black),
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side:
                                  BorderSide(color: Colors.black45, width: 1)),
                        ),
                        onPressed: () => {Navigator.pop(context)},
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(7)),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        child: const Text(
                          "Đã lấy món",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "SF Medium",
                              fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: MaterialColors.primary,
                          textStyle: TextStyle(color: Colors.white),
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }

  way(status, segment) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Color.fromRGBO(220, 220, 220, 1)))),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1 x",
                            style: const TextStyle(
                                color: MaterialColors.black,
                                fontFamily: "SF Regular",
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Kebab Thịt heo",
                              style: const TextStyle(
                                  color: MaterialColors.black,
                                  fontFamily: "SF Regular",
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "25.000 ₫",
                      style: const TextStyle(
                          color: MaterialColors.black,
                          fontFamily: "SF Regular",
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1 x",
                            style: const TextStyle(
                                color: MaterialColors.black,
                                fontFamily: "SF Regular",
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              "Kebab Thịt heo đặc biệt có phô mai mai mai",
                              style: const TextStyle(
                                  color: MaterialColors.black,
                                  fontFamily: "SF Regular",
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "25.000 ₫",
                      style: const TextStyle(
                          color: MaterialColors.black,
                          fontFamily: "SF Regular",
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              dialogOrder();
                            },
                            child: Container(
                              height: 40,
                              child: TextButton(
                                child: Text(
                                  "Xem chi tiết",
                                  style: TextStyle(
                                      color: MaterialColors.primary,
                                      fontFamily: "SF SemiBold",
                                      fontSize: 15),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: MaterialColors.white,
                                  textStyle:
                                      TextStyle(color: MaterialColors.primary),
                                  shadowColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: MaterialColors.primary),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: null,
                              ),
                            ),
                          )),
                      SizedBox(width: 15),
                      Expanded(
                        child: Container(
                          height: 40,
                          child: ElevatedButton(
                            child: Text(
                              "Đã lấy món",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "SF SemiBold",
                                  fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: MaterialColors.primary,
                              textStyle: TextStyle(color: Colors.white),
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () => {},
                          ),
                        ),
                        flex: 1,
                      )
                    ],
                  ))
              // Container(
              //   padding: EdgeInsets.only(top: 0, bottom: 10),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Xem thêm",
              //         style: const TextStyle(
              //             color: MaterialColors.primary,
              //             fontFamily: "SF Regular",
              //             fontSize: 14),
              //         textAlign: TextAlign.center,
              //       ),
              //       SizedBox(width: 5),
              //       Icon(
              //         Icons.arrow_forward_ios_outlined,
              //         color: MaterialColors.primary,
              //         size: 10,
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                // color:25olors.red,
                height: 25,
                width: 25,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/1532/1532692.png"),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        "Bánh Mì Kebab Gia Thành Bánh Mì Kebab Gia Thành",
                        style: const TextStyle(
                            color: MaterialColors.black,
                            fontFamily: "SF Bold",
                            fontSize: 18),
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      child: Text(
                        "S1.07, Vinhomes Grand Park, Phường Long Thạnh Mỹ, Quận 9,",
                        style: const TextStyle(
                            color: MaterialColors.black,
                            fontFamily: "SF Ruglar",
                            height: 1.3,
                            fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            border: Border.all(
                                color: Color.fromRGBO(230, 230, 230, 1),
                                width: 1)),
                        width: 170,
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 5, bottom: 5),
                        child: InkWell(
                          onTap: () {
                            _makePhoneCall("09873782823");
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone_rounded,
                                  size: 24, color: MaterialColors.black),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Gọi cho nhà hàng",
                                style: const TextStyle(
                                    color: MaterialColors.black,
                                    fontFamily: "SF Medium",
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        // Container(
        //     color: MaterialColors.grey, padding: EdgeInsets.only(top: 10)),
        // Container(
        //   padding: EdgeInsets.all(15),
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //         width: 25,
        //         height: 25,
        //         margin: const EdgeInsets.only(right: 15),
        //         child: ClipRRect(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(50),
        //               bottomLeft: Radius.circular(50),
        //               topRight: Radius.circular(50),
        //               bottomRight: Radius.circular(50),
        //             ),

        //             // padding: const EdgeInsets.only(right: 15, left: 0),
        //             child: Image(
        //               // color:25olors.red,
        //               height: 25,
        //               width: 25,
        //               fit: BoxFit.cover,
        //               image: NetworkImage(
        //                   "https://firebasestorage.googleapis.com/v0/b/deliveryfood-9c436.appspot.com/o/icon%2Fcutlery.png?alt=media&token=18690a73-6b12-40b6-a055-3c212ebcdad4"),
        //             )),
        //       ),
        //       Expanded(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   "Đặt bởi",
        //                   style: const TextStyle(
        //                       color: Color.fromRGBO(100, 100, 100, 1),
        //                       fontFamily: "SF Regular",
        //                       fontSize: 16),
        //                 ),
        //                 SizedBox(
        //                   height: 5,
        //                 ),
        //                 Text(
        //                   "Văn Dương",
        //                   style: const TextStyle(
        //                       color: MaterialColors.black,
        //                       fontFamily: "SF Bold",
        //                       fontSize: 16),
        //                 ),
        //               ],
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 _makePhoneCall("09873782823");
        //               },
        //               child: Icon(
        //                 Icons.phone_in_talk,
        //                 size: 24,
        //                 color: Color.fromRGBO(100, 100, 100, 1),
        //               ),
        //             )
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        // Container(
        //   margin: EdgeInsets.only(left: 15, right: 15),
        //   decoration: const BoxDecoration(
        //       border: Border(
        //           bottom: BorderSide(
        //               color: Color.fromRGBO(230, 230, 230, 1), width: 1))),
        // ),

        Container(
          child: Column(children: [
            // note(),
            Container(
                color: MaterialColors.grey, padding: EdgeInsets.only(top: 10)),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),

                        // padding: const EdgeInsets.only(right: 15, left: 0),
                        child: Image(
                          // color:40olors.red,
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/4507/4507529.png"),
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Danh sách đơn",
                        style: const TextStyle(
                            color: MaterialColors.black,
                            fontFamily: "SF Bold",
                            fontSize: 16)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color.fromRGBO(200, 200, 200, 1))),
              child: AccordionOrder(
                status: StatusAccordionOrder.done,
                content: way(StatusAccordionOrder.done, 1),
                title: "#CDCC-000012",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color.fromRGBO(200, 200, 200, 1))),
              child: AccordionOrder(
                status: StatusAccordionOrder.create,
                content: way(StatusAccordionOrder.create, 1),
                title: "#CDCC-000013",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Container(
            //   padding:
            //       EdgeInsets.only(left: 30, right: 15, bottom: 10, top: 10),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Expanded(
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               "1 x",
            //               style: const TextStyle(
            //                   color: MaterialColors.black,
            //                   fontFamily: "SF Regular",
            //                   fontSize: 16),
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             Expanded(
            //               child: Text(
            //                 "Kebab Thịt heo",
            //                 style: const TextStyle(
            //                     color: MaterialColors.black,
            //                     fontFamily: "SF Regular",
            //                     fontSize: 16),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 5,
            //       ),
            //       Text(
            //         "₫ 25.000",
            //         style: const TextStyle(
            //             color: MaterialColors.black,
            //             fontFamily: "SF Regular",
            //             fontSize: 16),
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   padding:
            //       EdgeInsets.only(left: 30, right: 15, bottom: 10, top: 10),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Expanded(
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               "1 x",
            //               style: const TextStyle(
            //                   color: MaterialColors.black,
            //                   fontFamily: "SF Regular",
            //                   fontSize: 16),
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             Expanded(
            //               child: Text(
            //                 "Kebab Thịt heo đặc biệt có phô mai mai mai",
            //                 style: const TextStyle(
            //                     color: MaterialColors.black,
            //                     fontFamily: "SF Regular",
            //                     fontSize: 16),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       SizedBox(
            //         width: 5,
            //       ),
            //       Text(
            //         "₫ 25.000",
            //         style: const TextStyle(
            //             color: MaterialColors.black,
            //             fontFamily: "SF Regular",
            //             fontSize: 16),
            //       )
            //     ],
            //   ),
            // ),
          ]),
        ),

        Container(
            color: MaterialColors.grey, padding: EdgeInsets.only(top: 10)),
        //thanh toán
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Thanh toán",
                      style: const TextStyle(
                          color: MaterialColors.black,
                          fontFamily: "SF SemiBold",
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.local_atm,
                                color: Colors.green,
                                size: 30,
                              ),
                            ),
                            Container(
                              child: Row(children: [
                                Container(
                                  child: Text(
                                    "  Số tiền cần ứng",
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: "SF SemiBold",
                                        fontSize: 16),
                                  ),
                                )
                              ]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "-đ",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    fontFamily: "SF Regular",
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              child: Text(
                                "50.000",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 0, 0),
                                    fontFamily: "SF Regular",
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final boxWidth = constraints.constrainWidth();
                  const dashWidth = 5.0;
                  final dashHeight = 1;
                  final dashCount = (boxWidth / (2 * dashWidth)).floor();
                  return Flex(
                    children: List.generate(dashCount, (_) {
                      return SizedBox(
                        width: dashWidth,
                        height: 1,
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                          color: Color.fromRGBO(200, 200, 200, 1),
                        )),
                      );
                    }),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Tiền COD cần ứng ",
                            style: const TextStyle(
                                color: MaterialColors.black,
                                fontFamily: "SF Regular",
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.error_outline,
                            color: Color.fromARGB(255, 125, 125, 131),
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "-đ",
                            style: const TextStyle(
                                color: MaterialColors.black,
                                fontFamily: "SF Regular",
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          child: Text(
                            "50.000",
                            style: const TextStyle(
                                color: MaterialColors.black,
                                fontFamily: "SF Regular",
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(230, 230, 230, 1), width: 1))),
            margin: EdgeInsets.only(top: 15, bottom: 30)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.red[800],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Hủy",
                  style: TextStyle(
                      color: Colors.red[800],
                      fontFamily: "SF Regular",
                      fontSize: 16),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.help_outline_rounded,
                    color: Color.fromRGBO(100, 100, 100, 1)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Trợ giúp",
                  style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1),
                      fontFamily: "SF Regular",
                      fontSize: 16),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
