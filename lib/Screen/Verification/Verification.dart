import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:kudozka_rider_app/Screen/Verification/VerificationComplete.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:getflutter/getflutter.dart';

final size = 0;

// ignore: must_be_immutable
class Verification extends StatefulWidget {
  Verification();

  String a;

  @override
  State<Verification> createState() => VerificationState();
}

class VerificationState extends State<Verification> {
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
          height: 185,
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
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(
                            left: 5, right: 3, top: 50, bottom: 5),
                        width: 50.0,
                        height: 50.0,
                        child: GFAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.bigstockphoto.com/images/homepage/module-6.jpg'),
                        )),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 5, right: 3, top: 60, bottom: 5),
                          child: Text(
                            "Mr.Taimoor",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "circular",
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, right: 3, top: 0, bottom: 10),
                          child: Text(
                            "Online      ",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "circular",
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
      margin: EdgeInsets.only(top: 140, left: 0, right: 0),
      height: 900,
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
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
//                            color: Colors.green,
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        image: new DecorationImage(
                      image: new AssetImage('verify.png'),
                    )),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text(
                  "Verification",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text(
                  "you will get OTP via SMS",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300.0,
                    height: 100.0,
                    margin: EdgeInsets.only(left: 20),
                    child: Material(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Colors.white,
                      elevation: 0.0,
                      child: PinCodeTextField(
                        autofocus: false,
//                          controller: controller,
                        hideCharacter: false,
                        highlight: true,
                        highlightColor: CupertinoColors.activeBlue,
                        defaultBorderColor: CupertinoColors.systemGrey,
                        hasTextBorderColor: CupertinoColors.activeGreen,
                        maxLength: 4,
                        pinBoxWidth: 65,
                        pinBoxHeight: 54,
                        maskCharacter: "🐶",
                        onTextChanged: (text) {
                          setState(() {});
                        },
                        isCupertino: true,
                        onDone: (text) {
                          print("DONE ");
                        },
                        wrapAlignment: WrapAlignment.center,
                        pinBoxDecoration:
                            ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
                        pinTextStyle: TextStyle(fontSize: 20.0),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text(
                  "Didn't receive the verification OTP?",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      child: Text(
                    "Resend",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF25aae1)),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationComplete()));

//
                  },
//

                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(3.0),
                      side: BorderSide(color: Color(0xFF25aae1))),
                  textColor: Colors.black,
                  elevation: 0.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: 220,
                    height: 60,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Colors.white),
                    padding: const EdgeInsets.all(15.0),
                    child: const Text('Verify',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontFamily: "circular")),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // ignore: unused_element

}
