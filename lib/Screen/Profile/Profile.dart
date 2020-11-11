import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:kudozka_rider_app/Screen/Profile/MyProfile.dart';
import 'package:kudozka_rider_app/Screen/Profile/MyWallet.dart';
import 'package:kudozka_rider_app/Screen/Profile/OrderHistory.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:getflutter/getflutter.dart';

final size = 0;

// ignore: must_be_immutable
class Profile extends StatefulWidget {
  Profile();

  String a;

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          getOverlayWidget(),
          getScrollableBody(),
        ],
      ),
    );
  }

  var selected;
  bool isChecked = true;
  bool status = false;
  List<DropdownMenuItem<String>> timing = [];

  Widget getOverlayWidget() {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 700,
          margin: EdgeInsets.only(top: 0, left: 5, right: 5),
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .transparent), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF853598),
                Color(0xFF2e9fda),
              ],
            ), // Specifies the background color and the opacity
          ),
        ),
        Container(
          height: 385,
//          width:,
          margin: EdgeInsets.only(left: 0, bottom: 20),
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .transparent), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF853598),
                Color(0xFF2e9fda),
              ],
            ), // Specifies the background color and the opacity
          ),
          child: Card(
            elevation: 0.0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: 180, right: 0, top: 60, bottom: 10),
                      child: CustomSwitchButton(
                        backgroundColor: Colors.blueGrey,
                        unCheckedColor: Colors.red,
                        animationDuration: Duration(milliseconds: 400),
                        checkedColor: Colors.white,
                        checked: isChecked,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(
                                left: 0, right: 0, top: 40, bottom: 5),
                            width: 150.0,
                            height: 150.0,
                            child: GFAvatar(
                              backgroundImage: NetworkImage(
                                  'https://www.bigstockphoto.com/images/homepage/module-6.jpg'),
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, right: 0, top: 0, bottom: 5),
                              child: Text(
                                "Mr.Taimoor",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "circular",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, right: 0, top: 0, bottom: 10),
                              child: Text(
                                "Online      ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "circular",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
            width: 342,
            margin: EdgeInsets.only(top: 115, left: 0),
            child: Column(
              children: <Widget>[],
            )),
      ],
    );
  }

  Widget getScrollableBody() {
    return Container(
      decoration: new BoxDecoration(
        border: new Border.all(
            width: 0,
            color: Colors
                .transparent), //color is transparent so that it does not blend with the actual color specified
        borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF853598),
            Color(0xFF2e9fda),
          ],
        ), // Specifies the background color and the opacity
      ),
      margin: EdgeInsets.only(top: 380, left: 0, right: 0),
      height: 300,
      width: 600,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        elevation: 0.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage('profile.png'),
                    )),
                  ),
                  Container(
                    child: Text(
                      "My Profile",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderHistory()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage('order.png'),
                    )),
                  ),
                  Container(
                    child: Text(
                      "Order History",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWallet()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage('wallet.png'),
                    )),
                  ),
                  Container(
                    child: Text(
                      "My Wallet",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      image: new DecorationImage(
                    image: new AssetImage('logout.png'),
                  )),
                ),
                Container(
                  child: Text(
                    "Log Out",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

// ignore: unused_element

}
