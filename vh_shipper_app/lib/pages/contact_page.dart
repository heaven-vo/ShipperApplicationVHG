import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';
import 'package:vh_shipper_app/pages/login_screen.dart';
import 'package:vh_shipper_app/pages/update_profile_screen.dart';
import 'package:vh_shipper_app/provider/appProvider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  bool isLoading = false;
  void handleLogout() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    // await auth.signOut();

    setState(() {
      isLoading = true;
    });
    var docSnapshot =
        await db.collection("users").doc(auth.currentUser!.uid).get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      var fcmToken = data?['fcmToken'];
      var userId = auth.currentUser!.uid;
      await db
          .collection("users")
          .doc(auth.currentUser!.uid)
          .delete()
          .then((value) => {
                auth.signOut().then((value) => {
                      setState(() {
                        isLoading = false;
                      }),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()))
                    })
              });
    }
  }

  @override
  Widget build(BuildContext context) {
    // String image = context.read<AppProvider>().getAvatar.toString();
    return Consumer<AppProvider>(builder: (context, provider, child) {
      return Scaffold(
          body: Stack(
        children: [
          Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 15, right: 15),
                        child: Row(
                          children: [
                            Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.only(right: 15),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    ),

                                    // padding: const EdgeInsets.only(right: 15, left: 0),
                                    child: Container(
                                      height: 70,
                                      // color: Colors.red,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          bottomLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                          bottomRight: Radius.circular(50),
                                        ),
                                      ),
                                      width: 70,
                                      child: Icon(
                                        Icons.account_circle_rounded,
                                        size: 70,
                                        color: MaterialColors.primary,
                                      ),
                                    ))
                                // Image(
                                //   // color:70olors.red,
                                //   height: 70,
                                //   width: 70,
                                //   fit: BoxFit.cover,
                                //   image: NetworkImage(image),
                                // )),
                                ),
                            Expanded(
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              UpdateProfileScreen(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          context.read<AppProvider>().getName,
                                          style: const TextStyle(
                                              color: MaterialColors.black,
                                              fontFamily: "SF Bold",
                                              fontSize: 22),
                                        ),
                                        Padding(padding: EdgeInsets.all(2)),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Chỉnh sửa tài khoản",
                                              style: const TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: "SF Medium",
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              size: 12,
                                              color: Colors.black54,
                                            )
                                          ],
                                        )
                                      ],
                                    )))
                          ],
                        )),
                    Container(
                        color: MaterialColors.grey,
                        padding: const EdgeInsets.all(5)),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Cài đặt",
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: "SF Medium",
                                fontSize: 17),
                          ),
                          const Padding(padding: EdgeInsets.all(15)),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      size: 24,
                                    ),
                                    Padding(padding: EdgeInsets.all(8)),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        "Cài đặt ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontFamily: "SF SemiBold",
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                  color: Colors.black45,
                                ),
                              ]),
                          Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black12, width: 1))),
                              margin: EdgeInsets.only(top: 20, bottom: 20)),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.history,
                                      size: 24,
                                    ),
                                    Padding(padding: EdgeInsets.all(8)),
                                    Text(
                                      "Lịch sử đơn hàng",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontFamily: "SF SemiBold",
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                  color: Colors.black45,
                                ),
                              ]),
                          Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.black12, width: 1))),
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 20)),
                          InkWell(
                            onTap: () {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text(
                                    'Đăng xuất ngay',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "SF Bold",
                                        fontSize: 18),
                                  ),
                                  actions: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: SizedBox(
                                                height: 40,
                                                child: ElevatedButton(
                                                  child: Text(
                                                    "Hủy",
                                                    style: TextStyle(
                                                        color: Colors.black45,
                                                        fontFamily: "SF Medium",
                                                        fontSize: 16),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.white,
                                                    textStyle: TextStyle(
                                                        color: Colors.black),
                                                    shadowColor: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .black45,
                                                                width: 1)),
                                                  ),
                                                  onPressed: () =>
                                                      {Navigator.pop(context)},
                                                ),
                                              ),
                                            ),
                                            Padding(padding: EdgeInsets.all(7)),
                                            Expanded(
                                              child: SizedBox(
                                                height: 40,
                                                child: ElevatedButton(
                                                  child: const Text(
                                                    "Đồng ý",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily: "SF Medium",
                                                        fontSize: 16),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary:
                                                        MaterialColors.primary,
                                                    textStyle: TextStyle(
                                                        color: Colors.black),
                                                    shadowColor: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  onPressed: () =>
                                                      {handleLogout()},
                                                ),
                                              ),
                                            )
                                          ]),
                                    )
                                  ],
                                ),
                              );
                            },
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.logout,
                                        size: 24,
                                      ),
                                      const Padding(padding: EdgeInsets.all(8)),
                                      const Text(
                                        "Đăng xuất",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontFamily: "SF SemiBold",
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                    color: Colors.black45,
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          if (isLoading) ...[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white.withOpacity(0.5),
              child: SpinKitFoldingCube(
                color: MaterialColors.primary,
                size: 50.0,
              ),
            )
          ],
        ],
      ));
    });
  }
  // @override
  // Widget build(BuildContext context) {
  // var profileInfor = Row(children: [
  //   Container(
  //     height: kSpacingUnit * 12,
  //     width: kSpacingUnit * 12,
  //     margin: EdgeInsets.only(top: kSpacingUnit * 1.5),
  //     child: Stack(
  //       children: [
  //         CircleAvatar(
  //           radius: 80,
  //           // backgroundImage:
  //           //     AssetImage('build\flutter_assets\Images\avt.jpg'),
  //         ),
  //         Align(
  //           alignment: Alignment.bottomRight,
  //           child: Container(
  //             height: kSpacingUnit * 3,
  //             width: kSpacingUnit * 3,
  //             decoration: BoxDecoration(
  //                 color: Theme.of(context).accentColor,
  //                 shape: BoxShape.circle),
  //             child: Icon(
  //               Icons.edit,
  //               color: Color.fromARGB(255, 0, 0, 0),
  //               size: 20,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  //   Column(
  //     children: [
  //       SizedBox(
  //         height: kSpacingUnit * 1.5,
  //       ),
  //       Text(
  //         "Vo Chi Cong",
  //         style: TextStyle(fontWeight: FontWeight.bold),
  //       ),
  //       SizedBox(
  //         height: kSpacingUnit * 1,
  //       ),
  //       Text(
  //         "0123456789",
  //       ),
  //       SizedBox(
  //         height: kSpacingUnit * 1,
  //       ),
  //       Text(
  //         "abc@gmail.com",
  //       ),
  //       SizedBox(
  //         height: kSpacingUnit * 1,
  //       ),
  //     ],
  //   )
  //   // Container(
  //   //   height: kSpacingUnit * 4,
  //   //   width: kSpacingUnit * 20,
  //   //   decoration: BoxDecoration(
  //   //     borderRadius: BorderRadius.circular(kSpacingUnit * 5),
  //   //     color: Theme.of(context).accentColor,
  //   //   ),
  //   //   child: Center(
  //   //     child: Text(
  //   //       "Chỉnh sửa hồ sơ",
  //   //       style: TextStyle(
  //   //           color: Theme.of(context).backgroundColor,
  //   //           fontWeight: FontWeight.bold),
  //   //     ),
  //   //   ),
  //   // ),
  // ]);

  // var header = Row(
  //   mainAxisAlignment: MainAxisAlignment.start,
  //   crossAxisAlignment: CrossAxisAlignment.center,
  //   children: <Widget>[
  //     // SizedBox(
  //     //   width: kSpacingUnit * 4,
  //     // ),
  //     profileInfor,
  //     // SizedBox(
  //     //   width: kSpacingUnit * 4,
  //     // ),
  //   ],
  // );

  // return Scaffold(
  //   body: Column(
  //     children: <Widget>[
  //       // SizedBox(
  //       //   height: kSpacingUnit * 1,
  //       // ),
  //       header,
  //       // SizedBox(
  //       //   height: kSpacingUnit * 2,
  //       // ),
  //       ProfileListView(
  //         icon: Icons.done,
  //         text: 'Điều khoản hợp tác',
  //       ),
  //       SizedBox(
  //         height: kSpacingUnit * 1,
  //       ),
  //       ProfileListView(
  //         icon: Icons.menu,
  //         text: 'Thông tin bảo mật',
  //       ),
  //       SizedBox(
  //         height: kSpacingUnit * 1,
  //       ),
  //       ProfileListView(
  //         icon: Icons.help,
  //         text: 'Trợ giúp & hỗ trợ',
  //       ),
  //       SizedBox(
  //         height: kSpacingUnit * 1,
  //       ),
  //       ProfileListView(
  //         icon: Icons.settings,
  //         text: 'Cài đặt',
  //       ),
  //       SizedBox(
  //         height: kSpacingUnit * 1,
  //       ),
  //       ProfileListView(
  //         icon: Icons.logout,
  //         text: 'Đăng xuất',
  //       ),
  //     ],
  //   ),
  // );
  // }
}
