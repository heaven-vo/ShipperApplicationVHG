import 'package:flutter/material.dart';
import 'package:vh_shipper_app/Json/constrain.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    var profileInfor = Expanded(
      child: Column(children: [
        Container(
          height: kSpacingUnit * 12,
          width: kSpacingUnit * 12,
          margin: EdgeInsets.only(top: kSpacingUnit * 2),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 80,
                // backgroundImage:
                //     AssetImage('build\flutter_assets\Images\avt.jpg'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: kSpacingUnit * 3,
                  width: kSpacingUnit * 3,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.edit,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: kSpacingUnit * 2,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: kSpacingUnit * 2,
        ),
        Text(
          "Vo Chi Cong",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Text(
          "0123456789",
        ),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Text(
          "abc@gmail.com",
        ),
        SizedBox(
          height: kSpacingUnit * 1,
        ),
        Container(
          height: kSpacingUnit * 4,
          width: kSpacingUnit * 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kSpacingUnit * 5),
            color: Theme.of(context).accentColor,
          ),
          child: Center(
            child: Text(
              "Chỉnh sửa hồ sơ",
              style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: kSpacingUnit * 4,
        ),
        profileInfor,
        SizedBox(
          width: kSpacingUnit * 4,
        ),
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: kSpacingUnit * 1,
          ),
          header,
          SizedBox(
            height: kSpacingUnit * 2,
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              ProfileListView(
                icon: Icons.done,
                text: 'Điều khoản hợp tác',
              ),
              SizedBox(
                height: kSpacingUnit * 1,
              ),
              ProfileListView(
                icon: Icons.menu,
                text: 'Thông tin bảo mật',
              ),
              SizedBox(
                height: kSpacingUnit * 1,
              ),
              ProfileListView(
                icon: Icons.help,
                text: 'Trợ giúp & hỗ trợ',
              ),
              SizedBox(
                height: kSpacingUnit * 1,
              ),
              ProfileListView(
                icon: Icons.settings,
                text: 'Cài đặt',
              ),
              SizedBox(
                height: kSpacingUnit * 1,
              ),
              ProfileListView(
                icon: Icons.logout,
                text: 'Đăng xuất',
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ProfileListView extends StatelessWidget {
  final IconData icon;
  final text;
  final bool hasNavigation;

  const ProfileListView({
    Key? key,
    required this.icon,
    this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit * 6,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit * 5,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingUnit * 5),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(children: <Widget>[
        Icon(
          this.icon,
          size: kSpacingUnit * 3.5,
        ),
        SizedBox(
          width: kSpacingUnit * 3,
        ),
        Text(
          this.text,
          style: TextStyle(fontSize: 17),
        ),
        Spacer(),
        if (this.hasNavigation)
          Icon(
            Icons.navigate_next,
            size: kSpacingUnit * 3.5,
          )
      ]),
    );
  }
}
