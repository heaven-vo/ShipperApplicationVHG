import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/apis/apiServices.dart';
import 'package:vh_shipper_app/models/DriverModel.dart';
import 'package:vh_shipper_app/provider/appProvider.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController _oldPass = TextEditingController();
  TextEditingController _newPass = TextEditingController();
  TextEditingController _confirmNewPass = TextEditingController();
  bool isloading = false;
  final _formKey = GlobalKey<FormState>();
  hanldeSubmit(String userId) async {
    setState(() {
      isloading = true;
    });

    //Create an instance of the current user.
    var user = FirebaseAuth.instance.currentUser!;
    //Must re-authenticate user before updating the password. Otherwise it may fail or user get signed out.

    try {
      final cred = EmailAuthProvider.credential(email: userId, password: _oldPass.text);
      var base64String = null;
      DriverModel driverContext = context.read<AppProvider>().getDriverModel;
      http.Response imageResponse = await http.get(
        Uri.parse(driverContext.image.toString()),
      );
      await user.reauthenticateWithCredential(cred).then((value) async {
        base64String = base64.encode(imageResponse.bodyBytes);
        if (user != null) {
          DriverModel driverModel = DriverModel(
            image: base64String,
            fullName: driverContext.fullName,
            phone: driverContext.phone,
            id: driverContext.id,
            licensePlates: driverContext.licensePlates,
            password: _newPass.text,
            vehicleType: driverContext.vehicleType,
            colour: driverContext.colour,
            deliveryTeam: driverContext.deliveryTeam,
            email: driverContext.email,
          );
          ApiServices.putDriver(driverModel, user.email!)
              .then((value) => {
                    if (value != null)
                      {
                        user.updatePassword(_newPass.text).then((_) {
                          setState(() {
                            isloading = false;
                            Navigator.pop(context);
                            Fluttertoast.showToast(
                                msg: "?????i m???t kh???u th??nh c??ng",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.green,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          });
                        }).catchError((error) {
                          print("error" + error.toString());
                          setState(() {
                            isloading = false;
                          });
                        })
                      }
                    else
                      {
                        Fluttertoast.showToast(
                            msg: "??a?? xa??y ra l????i gi?? ??o??",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0),
                        setState(() {
                          isloading = false;
                        })
                      }
                  })
              .catchError((err) {
            print("err" + err.toString());
            setState(() {
              isloading = false;
            });
          });
        } else {
          setState(() {
            isloading = false;
          });
        }
      }).catchError((err) {
        print("err" + err.toString());
        setState(() {
          isloading = false;
        });
      });
    } on FirebaseAuthException catch (error) {
      print("errorFirebase: " + error.message.toString());
      setState(() {
        isloading = false;
      });
      Fluttertoast.showToast(
          msg: "M???t kh???u c?? kh??ng ????ng", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP, timeInSecForIosWeb: 1, backgroundColor: Colors.red, textColor: Colors.white, fontSize: 16.0);
    } catch (e) {
      print("e " + e.toString());
      Fluttertoast.showToast(
          msg: "M???t kh???u c?? kh??ng ????ng", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.TOP, timeInSecForIosWeb: 1, backgroundColor: Colors.red, textColor: Colors.white, fontSize: 16.0);
      print(e);
      setState(() {
        isloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, provider, child) {
      return Scaffold(
          appBar: new AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: Text(
              "Thay ?????i m???t kh???u",
              style: TextStyle(
                color: MaterialColors.black,
                fontFamily: "SF Bold",
              ),
            ),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                  child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          "Nh???p l???i m???t kh???u c??",
                          style: TextStyle(
                            fontFamily: "SF Semibold",
                            fontSize: 18,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      ],
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "M???t kh???u c?? kh??ng ???????c ????? tr???ng";
                        } else if (value.length < 6) {
                          return "M???t kh???u ph???i d??i h??n 6 k?? t???";
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16),
                        hintText: 'M???t kh???u c??',
                      ),
                      controller: _oldPass,
                      // controller: _name != null
                      //     ? TextEditingController(text: _name)
                      //     : null,
                      // initialValue: _name != null ? _name : null,

                      onChanged: (e) => {
                        // setState(() => {_name.text = e})
                      },
                      obscureText: true,
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Row(
                      children: [
                        Text(
                          "M???t kh???u m???i",
                          style: TextStyle(
                            fontFamily: "SF Semibold",
                            fontSize: 18,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      ],
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "M???t kh???u m???i kh??ng ???????c ????? tr???ng";
                        } else if (value.length < 6) {
                          return "M???t kh???u ph???i d??i h??n 6 k?? t???";
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16),
                        hintText: 'M???t kh???u m???i',
                      ),
                      controller: _newPass,
                      // controller: _name != null
                      //     ? TextEditingController(text: _name)
                      //     : null,
                      // initialValue: _name != null ? _name : null,

                      onChanged: (e) => {
                        // setState(() => {_name.text = e})
                      },
                      obscureText: true,
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Row(
                      children: [
                        Text(
                          "Nh???p l???i m???t kh???u m???i",
                          style: TextStyle(
                            fontFamily: "SF Semibold",
                            fontSize: 18,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      ],
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "M???t kh???u m???i kh??ng ???????c ????? tr???ng";
                        } else if (value != _newPass.text) {
                          return "M???t kh???u nh???p l???i kh??ng kh???p";
                        } else if (value.length < 6) {
                          return "M???t kh???u ph???i d??i h??n 6 k?? t???";
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 16),
                        hintText: 'Nh???p l???i m???t kh???u m???i',
                      ),
                      controller: _confirmNewPass,
                      // controller: _name != null
                      //     ? TextEditingController(text: _name)
                      //     : null,
                      // initialValue: _name != null ? _name : null,

                      onChanged: (e) => {
                        // setState(() => {_name.text = e})
                      },
                      obscureText: true,
                    ),
                    Padding(padding: EdgeInsets.all(30)),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          height: 45,
                          child: ElevatedButton(
                            child: Text(
                              "?????i m???t kh???u",
                              style: TextStyle(color: Colors.white, fontFamily: "SF Bold", fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: MaterialColors.primary,
                              textStyle: TextStyle(color: Colors.black),
                              shadowColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () => {
                              if (_formKey.currentState!.validate()) {hanldeSubmit(context.read<AppProvider>().getUserId ?? "")},
                            },
                          ),
                        )),
                  ]),
                ),
              )),
              if (isloading)
                Positioned(
                  child: Container(
                    color: Colors.white.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: SpinKitDualRing(
                      color: MaterialColors.primary,
                      size: 50.0,
                    ),
                  ),
                ),
            ],
          ));
    });
  }
}
