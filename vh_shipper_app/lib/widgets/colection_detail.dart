import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class ColectionDetail extends StatefulWidget {
  const ColectionDetail({super.key});

  @override
  State<ColectionDetail> createState() => _ColectionDetailState();
}

historyTitle() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(kSpacingUnit * 1),
      color: Color.fromARGB(255, 243, 247, 251),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  "Tháng 09/2022",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontFamily: "SF Bold"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
      ],
    ),
  );
}

historyItem(index) {
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
              Stack(
                children: [
                  Container(
                      height: kSpacingUnit * 5.5,
                      width: kSpacingUnit * 5.5,
                      child: Container(
                        height: kSpacingUnit * 5,
                        width: kSpacingUnit * 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(200, 200, 200, 1))),
                        child: const Center(
                          child: Image(
                              // color:70olors.red,
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/deliveryfood-9c436.appspot.com/o/icon%2Fwallet.png?alt=media&token=49ac71c1-04e2-4e65-ae48-fbe255daeca9")),
                        ),
                      )),
                ],
              ),
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
                        Text(
                          "11/09/2022 19:36:00",
                          style: TextStyle(
                              fontFamily: "SF SemiBold", fontSize: 14),
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
                          "#093828",
                          style:
                              TextStyle(fontFamily: "SF Regular", fontSize: 14),
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
                          "MOMO VO CHI CONG",
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
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "+ 100.000 VND",
                          style: TextStyle(
                              fontFamily: "SF Regular",
                              fontSize: 15,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Icon(
                            Icons.attach_money,
                            color: Colors.green,
                            size: kSpacingUnit * 3,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _ColectionDetailState extends State<ColectionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kSpacingUnit * 3,
            ),
            historyTitle(),
            ...[1, 2, 3, 4, 5].map((item) => historyItem(item)).toList(),
            SizedBox(
              height: kSpacingUnit * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
