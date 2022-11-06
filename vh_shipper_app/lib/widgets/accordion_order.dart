import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Colors/color.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class AccordionOrder extends StatefulWidget {
  const AccordionOrder(
      {Key? key,
      required this.content,
      required this.title,
      required this.status})
      : super(key: key);
  final String title;
  final Widget content;
  final StatusAccordionOrder status;
  @override
  _AccordionOrderState createState() => _AccordionOrderState();
}

class _AccordionOrderState extends State<AccordionOrder> {
  Widget getIcon(status) {
    switch (status) {
      case StatusAccordionOrder.create:
        return Icon(
          Icons.radio_button_off_outlined,
          size: 20,
        );
      case StatusAccordionOrder.doing:
        return Icon(
          Icons.my_location,
          color: MaterialColors.primary,
          size: 20,
        );
      case StatusAccordionOrder.done:
        return Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 20,
        );
      case StatusAccordionOrder.fail:
        return Icon(
          Icons.cancel,
          color: Colors.red,
          size: 20,
        );

      default:
        return Icon(
          Icons.radio_button_off_outlined,
          size: 18,
        );
    }
  }

  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(children: [
        InkWell(
          onTap: () {
            setState(() {
              _showContent = !_showContent;
            });
          },
          child: ListTile(
              // contentPadding: EdgeInsets.only(left: 15),
              title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getIcon(widget.status),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontFamily: "SF SemiBold",
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5)),
              Icon(
                  _showContent
                      ? Icons.keyboard_arrow_up_outlined
                      : Icons.keyboard_arrow_down_outlined,
                  color: Colors.black),
            ],
          )),
        ),
        _showContent
            ? Container(
                child: widget.content,
              )
            : Container()
      ]),
    );
  }
}
