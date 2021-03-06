import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kudozka_rider_app/Screen/Profile/ChangePassword.dart';
import 'package:kudozka_rider_app/Screen/Profile/Profile.dart';
//import 'package:shared_preferences/shared_preferences.dart';

final size = 0;

// ignore: must_be_immutable
class MyProfile extends StatefulWidget {
  MyProfile();

  String a;

  @override
  State<MyProfile> createState() => MyProfileState();
}

class MyProfileState extends State<MyProfile> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 0, top: 40, bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          print('click on edit');
                          Navigator.of(context).pop();
                        },
                        child: Image(
                          image: AssetImage(
                            'back1.png',
                          ),
                          fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 80, right: 0, top: 40, bottom: 10),
                      child: Text(
                        "My Profile",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
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
      margin: EdgeInsets.only(top: 90, left: 0, right: 0),
      height: 630,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
//                            height:100,
//                          color:Colors.blue,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
                    child: TextField(
//                      controller: _phone_numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF939da7))),
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintStyle: TextStyle(fontFamily: "circular"),
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        labelStyle: TextStyle(
                          fontFamily: "circular",
                          color: Color(0xFF979ca0),
                        ),
                      ),

                      onChanged: (text) {
                        setState(() {
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
//                            height:100,
//                          color:Colors.blue,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
                    child: TextField(
//                      controller: _phone_numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF939da7))),
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintStyle: TextStyle(fontFamily: "circular"),
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        labelStyle: TextStyle(
                          fontFamily: "circular",
                          color: Color(0xFF979ca0),
                        ),
                      ),

                      onChanged: (text) {
                        setState(() {
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
//                            height:100,
//                          color:Colors.blue,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
                    child: TextField(
//                      controller: _phone_numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF939da7))),
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                        hintStyle: TextStyle(fontFamily: "circular"),
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        labelStyle: TextStyle(
                          fontFamily: "circular",
                          color: Color(0xFF979ca0),
                        ),
                      ),

                      onChanged: (text) {
                        setState(() {
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
//                            height:100,
//                          color:Colors.blue,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 10),
                    child: TextField(
//                      controller: _phone_numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF939da7))),
                        border: OutlineInputBorder(),
                        labelText: 'City',
                        hintStyle: TextStyle(fontFamily: "circular"),
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        labelStyle: TextStyle(
                          fontFamily: "circular",
                          color: Color(0xFF979ca0),
                        ),
                      ),

                      onChanged: (text) {
                        setState(() {
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    )),
              ],
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(right: 0, top: 20, bottom: 10),
//                        color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePassword()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(left: 0),
                            child: Text(
                              "ChangePassword",
                              style: TextStyle(
                                  fontFamily: "circular",
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF979ca0)),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
//

                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(3.0)),
                  textColor: Colors.white,
                  elevation: 10.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                      width: 300,
                      height: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF853598),
                            Color(0xFF2e9fda),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(15.0),
                      child: const Text('Update',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 20, fontFamily: "circular"))),
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
