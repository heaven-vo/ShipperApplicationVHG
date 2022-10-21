import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/contact_page.dart';
import 'package:vh_shipper_app/pages/home_page.dart';
import 'package:vh_shipper_app/pages/order_page.dart';
import 'package:vh_shipper_app/pages/transaction_page.dart';
import 'package:vh_shipper_app/pages/wallet_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  //AppBar appBar = Null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 254, 254),
        bottomNavigationBar: getFooter(),
        appBar: getAppBar(),
        body: getBody());
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        OrderPage(),
        WalletPage(),
        Transaction(),
        ContactPage(),
      ],
    );
  }

  getAppBar() {
    switch (activeTab) {
      case 0:
        //appBar = null;
        break;
      case 1:
        return AppBar(
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Theme.of(context).accentColor,
          title: Text(
            "Đơn hàng",
            style: TextStyle(color: black),
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 25),
              icon: Icon(
                Icons.light_mode,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 25,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        );
        break;
      case 2:
        return AppBar(
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Theme.of(context).accentColor,
          title: Text(
            "Ví tiền",
            style: TextStyle(color: black),
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 25),
              icon: Icon(
                Icons.light_mode,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 25,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        );
        break;
      case 3:
        return AppBar(
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Theme.of(context).accentColor,
          title: Text(
            "Lịch sử giao dịch",
            style: TextStyle(color: black),
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 25),
              icon: Icon(
                Icons.light_mode,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 25,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        );
        break;
      case 4:
        return AppBar(
          centerTitle: true,
          elevation: 10.0,
          backgroundColor: Theme.of(context).accentColor,
          title: Text(
            "Tài khoản",
            style: TextStyle(color: black),
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 25),
              icon: Icon(
                Icons.light_mode,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 25,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        );
        break;
    }
  }

  Widget getFooter() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(255, 105, 76, 76),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(5, (index) {
              return IconButton(
                icon: Icon(
                  itemsTab[index]['icon'],
                  size: itemsTab[index]["size"],
                  color: activeTab == index ? accent : black,
                ),
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
              );
            })),
      ),
    );
  }
}
