import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/models/notificationModel.dart';
import 'package:vh_shipper_app/pages/contact_page.dart';
import 'package:vh_shipper_app/pages/home_page.dart';
import 'package:vh_shipper_app/pages/notification_page.dart';
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
        // backgroundColor: Color.fromARGB(255, 254, 254, 254),
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
        TransactionPage(),
        ContactPage(),
      ],
    );
  }

  FirebaseMessaging messaging = FirebaseMessaging.instance;
  late PushNotificationModel _notificationInfo;
  FirebaseFirestore db = FirebaseFirestore.instance;
  // late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  void registerNotification() async {
    await Firebase.initializeApp();
    messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
        alert: true, badge: true, provisional: false, sound: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print("on app");
        PushNotificationModel notification = PushNotificationModel(
            title: message.notification!.title,
            body: message.notification!.body,
            dataTitle: message.data['title'],
            dataBody: message.data['body']);

        setState(() {
          _notificationInfo = notification;
        });
        print("body: ${notification.body}");
        print("title: ${notification.title}");
        if (notification != null) {
          // _showNotification(
          //     _notificationInfo!.title!, _notificationInfo!.body!);
        }
      });
    } else {
      print("not permission");
    }
  }

  // Future<void> _showNotification(String title, String content) async {
  //   final AndroidNotificationDetails androidPlatformChannelSpecifics =
  //       AndroidNotificationDetails('your channel id', 'your channel name',
  //           channelDescription: 'your channel description',
  //           importance: Importance.max,
  //           priority: Priority.high,
  //           icon: '@drawable/logo_transparent',
  //           tag: "TWE",
  //           ticker: 'ticker');

  //   final NotificationDetails platformChannelSpecifics =
  //       NotificationDetails(android: androidPlatformChannelSpecifics);
  //   await flutterLocalNotificationsPlugin
  //       .show(0, title, content, platformChannelSpecifics, payload: 'item x');
  // }

  @override
  void initState() {
    // var initializationSettingsAndroid =
    //     AndroidInitializationSettings('@mipmap/ic_launcher');
    // var initializationSettingsIOS = IOSInitializationSettings();
    // var initializationSettings = InitializationSettings(
    //     android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    // flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    // flutterLocalNotificationsPlugin.initialize(initializationSettings,
    //     onSelectNotification: (value) {
    //   Navigator.pushNamed(context, "/notification");
    // });

    registerNotification();
    checkForInitialMessage();
    super.initState();

    // UserModel user;
    // ApiServices.getProfileByUsername(context.read<AppProvider>().getUid)
    //     .then((value) => {
    //           print("value12321: $value"),
    //           if (value != null)
    //             {
    //               user = value,
    //               context.read<AppProvider>().setAvatar(user.image)
    //             }
    //         });
  }

  checkForInitialMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        Navigator.pushNamed(context, "/notification");
      });
    }
  }

  getAppBar() {
    switch (activeTab) {
      case 0:
        return AppBar(
          centerTitle: true,
          elevation: 10.0,
          automaticallyImplyLeading: false,
          backgroundColor: MaterialColors.primary,
          title: Text(
            "Trang chủ",
            style:
                TextStyle(color: MaterialColors.black, fontFamily: "SF Bold"),
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
      case 1:
        return AppBar(
          centerTitle: true,
          elevation: 10.0,
          automaticallyImplyLeading: false,
          backgroundColor: MaterialColors.primary,
          title: Text(
            "Đơn hàng",
            style:
                TextStyle(color: MaterialColors.black, fontFamily: "SF Bold"),
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
          backgroundColor: MaterialColors.primary,
          automaticallyImplyLeading: false,
          title: Text(
            "Ví tiền",
            style:
                TextStyle(color: MaterialColors.black, fontFamily: "SF Bold"),
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
          backgroundColor: MaterialColors.primary,
          automaticallyImplyLeading: false,
          title: Text(
            "Lịch sử giao dịch",
            style:
                TextStyle(color: MaterialColors.black, fontFamily: "SF Bold"),
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
          automaticallyImplyLeading: false,
          backgroundColor: MaterialColors.primary,
          title: Text(
            "Tài khoản",
            style:
                TextStyle(color: MaterialColors.black, fontFamily: "SF Bold"),
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

  BottomNavigationBarItem _buildItem(tabItem, index) {
    return BottomNavigationBarItem(
      icon: Icon(tabItem[index]['icon']),
      label: tabItem[index]['label'],
    );
  }

  Widget getFooter() {
    return
        // Container(
        //   height: 70,
        //   decoration: BoxDecoration(
        //     color: Color.fromARGB(255, 255, 255, 255),
        //     // border: Border(
        //     //   top: BorderSide(
        //     //     color: Color.fromARGB(255, 105, 76, 76),
        //     //   ),
        //     // ),
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        //     child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: List.generate(5, (index) {
        //           return IconButton(
        //             icon: Icon(
        //               itemsTab[index]['icon'],
        //               size: itemsTab[index]["size"],
        //               color: activeTab == index ? accent : black,
        //             ),
        //             onPressed: () {
        //               setState(() {
        //                 activeTab = index;
        //               });
        //             },
        //           );
        //         })),
        //   ),
        // );
        BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: IconThemeData(color: MaterialColors.primary),
            type: BottomNavigationBarType.fixed,
            currentIndex: activeTab,
            selectedItemColor: MaterialColors.primary,
            items: [
              _buildItem(itemsTab, 0),
              _buildItem(itemsTab, 1),
              _buildItem(itemsTab, 2),
              _buildItem(itemsTab, 3),
              _buildItem(itemsTab, 4),
            ],
            onTap: (index) => {
                  setState(() {
                    activeTab = index;
                  })
                });
  }
}
