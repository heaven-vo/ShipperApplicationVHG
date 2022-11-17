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
    margin: EdgeInsets.only(right: 10, top: 5, bottom: 5, left: 10),
    padding: EdgeInsets.all(10),
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: Text(index,
                style: TextStyle(fontSize: 14, fontFamily: "SF SemiBold")),
          ),
          SizedBox(width: 5),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: MaterialColors.secondary,
              border: Border.all(color: MaterialColors.secondary),
            ),
            child: Row(
              children: [
                Icon(Icons.podcasts, size: 14, color: Colors.white),
                Text(
                  "  Điểm lấy hàng",
                  style: TextStyle(
                      fontFamily: "SF Medium",
                      fontSize: 13,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Container(
          child: Row(
            children: [
              Text(
                "Trà sữa 5 Ngon",
                style: TextStyle(fontFamily: "SF Medium", fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * .5,
        ),
        Text(
          "S5.05, Vinhomes Grand Park, Phường Long Thạnh Mỹ, Quận 9",
          style: TextStyle(
              fontFamily: "SF Regular",
              fontSize: 15,
              color: Color.fromRGBO(150, 150, 150, 1)),
        ),
      ],
    ),
  );
}

pointDelivery(index) {
  return Container(
    margin: EdgeInsets.only(right: 10, top: 5, bottom: 5, left: 10),
    padding: EdgeInsets.all(10),
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Color.fromRGBO(230, 230, 230, 1))),
            child: Text(index,
                style: TextStyle(fontSize: 14, fontFamily: "SF SemiBold")),
          ),
          SizedBox(width: 5),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: MaterialColors.primary,
              border: Border.all(color: MaterialColors.primary),
            ),
            child: Row(
              children: [
                Icon(Icons.podcasts, size: 14, color: Colors.white),
                Text(
                  "  Điểm giao hàng",
                  style: TextStyle(
                      fontFamily: "SF Medium",
                      fontSize: 13,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Container(
          child: Row(
            children: [
              Text(
                "Trà sữa 5 Ngon",
                style: TextStyle(fontFamily: "SF Medium", fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * .5,
        ),
        Text(
          "S5.05, Vinhomes Grand Park, Phường Long Thạnh Mỹ, Quận 9",
          style: TextStyle(
              fontFamily: "SF Regular",
              fontSize: 15,
              color: Color.fromRGBO(150, 150, 150, 1)),
        ),
      ],
    ),
  );
}

total_order() {
  return Container(
    padding: EdgeInsets.only(top: 30, bottom: 15, left: 15, right: 15),
    color: Colors.white,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Tổng phí".toUpperCase(),
                style: TextStyle(
                  fontFamily: "SF SemiBold",
                  fontSize: 14,
                  color: Color.fromRGBO(170, 170, 170, 1),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "đ200.000",
                style: TextStyle(
                  fontFamily: "SF SemiBold",
                  fontSize: 17,
                  color: MaterialColors.primary,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                "Tiền ứng tối thiểu".toUpperCase(),
                style: TextStyle(
                  fontFamily: "SF SemiBold",
                  fontSize: 14,
                  color: Color.fromRGBO(170, 170, 170, 1),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "đ500.000",
                style: TextStyle(
                  fontFamily: "SF SemiBold",
                  fontSize: 17,
                  color: MaterialColors.black,
                ),
              )
            ],
          ),
        ]),
  );
}

TabBar get _tabBar => TabBar(
      labelColor: MaterialColors.primary,
      unselectedLabelColor: Colors.black45,
      tabs: [
        Tab(
          child: Container(
            padding: EdgeInsets.only(top: 3),
            width: 85,
            child: Text(
              "Điểm đến",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "SF SemiBold",
                fontSize: 16,
              ),
            ),
          ),
        ),
        Tab(
          child: Container(
            padding: EdgeInsets.only(top: 3),
            width: 85,
            child: Text(
              "Đơn hàng",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "SF SemiBold",
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );

class _TripDetailState extends State<TripDetail> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: MaterialColors.primary,
            title: Text(
              "Chi tiết chuyến hàng",
              style:
                  TextStyle(color: MaterialColors.white, fontFamily: "SF Bold"),
            ),
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: ColoredBox(
                color: Colors.white,
                child: _tabBar,
              ),
            )),
        body: TabBarView(children: [
          Container(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                total_order(),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   padding: EdgeInsets.only(
                //     bottom: 15,
                //   ),
                //   color: Colors.white,
                //   child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "TỔNG ĐIỂM ĐẾN: ",
                //           style: TextStyle(
                //               color: Color.fromRGBO(170, 170, 170, 1),
                //               fontSize: 14,
                //               fontFamily: "SF SemiBold"),
                //         ),
                //         Text(
                //           "5",
                //           style: TextStyle(
                //               color: MaterialColors.black,
                //               fontSize: 16,
                //               fontFamily: "SF SemiBold"),
                //         )
                //       ]),
                // ),
                SizedBox(
                  height: kSpacingUnit * 1.5,
                ),
                ...["A", "B", "C", "D"]
                    .map((item) => pointPickup(item))
                    .toList(),
                ...["A", "B", "C", "D"]
                    .map((item) => pointDelivery(item))
                    .toList(),
              ],
            ),
          )),
          TripInfor()
        ]),
      ),
    );
  }
}
