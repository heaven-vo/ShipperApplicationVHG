import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/home_page.dart';
import 'package:vh_shipper_app/pages/list_order_page.dart';
import 'package:vh_shipper_app/widgets/trip_infor.dart';

class TripDetail extends StatefulWidget {
  int Status;
  TripDetail({super.key, required this.Status});

  @override
  State<TripDetail> createState() => _TripDetailState();
}

pointPickup(index) {
  return Container(
    padding: EdgeInsets.only(right: 15, top: 15, bottom: 15, left: 15),
    color: index % 2 == 1 ? Colors.white : Color.fromRGBO(250, 250, 250, 1),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(children: [
                      Container(
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 247, 247, 247)),
                          ),
                          onPressed: null,
                          child: Text('A',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: "SF SemiBold")),
                        ),
                      ),
                      Text(" "),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 208, 207, 205),
                          border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1)),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.podcasts,
                              size: 14,
                            ),
                            Text(
                              "  Điểm lấy hàng",
                              style: TextStyle(
                                  fontFamily: "SF SemiBold", fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 0.5,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Trà sữa 5 Ngon",
                          style:
                              TextStyle(fontFamily: "SF Regular", fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 0.5,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Số 01, Lê Văn Việt, Quận 9",
                          style: TextStyle(
                              fontFamily: "SF Regular",
                              fontSize: 16,
                              color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

pointDelivery(index) {
  return Container(
    padding: EdgeInsets.only(right: 15, top: 15, bottom: 15, left: 15),
    color: index % 2 == 1 ? Colors.white : Color.fromRGBO(250, 250, 250, 1),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: OutlinedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 247, 247, 247)),
                            ),
                            onPressed: null,
                            child: Text('A',
                                style: TextStyle(
                                    fontSize: 14, fontFamily: "SF SemiBold")),
                          ),
                        ),
                        Text(" "),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: MaterialColors.primary,
                            border: Border.all(
                                color: Color.fromRGBO(200, 200, 200, 1)),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.podcasts,
                                size: 14,
                              ),
                              Text(
                                "Điểm giao hàng",
                                style: TextStyle(
                                    fontFamily: "SF SemiBold",
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 0.5,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "S1.01, Rainbow",
                          style:
                              TextStyle(fontFamily: "SF Regular", fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kSpacingUnit * 0.5,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Số 01, Đường 01, Vinhome Grand Park",
                          style: TextStyle(
                              fontFamily: "SF Regular",
                              fontSize: 16,
                              color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _TripDetailState extends State<TripDetail> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 10.0,
          automaticallyImplyLeading: false,
          backgroundColor: MaterialColors.primary,
          shadowColor: MaterialColors.primary,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListOrderPage()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 25,
                ),
              );
            },
          ),
          title: Text(
            "Chi tiết chuyến hàng",
            style:
                TextStyle(color: MaterialColors.black, fontFamily: "SF Bold"),
          ),
          bottom: TabBar(
            indicatorColor: MaterialColors.primary,
            labelColor: Color.fromARGB(255, 0, 0, 0),
            unselectedLabelColor: MaterialColors.white,
            tabs: <Widget>[
              Tab(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 3),
                      width: 85,
                      child: Text(
                        "Địa Điểm",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "SF SemiBold",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 3),
                      width: 85,
                      child: Text(
                        "Đơn hàng",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontFamily: "SF SemiBold", fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: kSpacingUnit * 1.5,
                ),
                ...[1, 2, 3, 4].map((item) => pointPickup(item)).toList(),
                SizedBox(
                  height: kSpacingUnit * 0.5,
                ),
                ...[1, 2, 3, 4].map((item) => pointDelivery(item)).toList(),
              ],
            ),
          )),
          TripInfor()
        ]),
      ),
    );
  }
}
