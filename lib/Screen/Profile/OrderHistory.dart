import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

final size = 0;

// ignore: must_be_immutable
class OrderHistory extends StatefulWidget {
  OrderHistory();

  String a;

  @override
  State<OrderHistory> createState() => OrderHistoryState();
}

class OrderHistoryState extends State<OrderHistory> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
//            bottomNavigationBar:
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
                          left: 70, right: 0, top: 40, bottom: 10),
                      child: Text(
                        "Order History",
                        style: TextStyle(
                          fontSize: 24,
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
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: new BoxDecoration(
                border: new Border.all(
                    width: 0,
                    color: Color(
                        0xFFBCBCBC)), //color is transparent so that it does not blend with the actual color specified
                borderRadius:
                    const BorderRadius.all(const Radius.circular(0.0)),
              ),
              width: 300,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 0, top: 0, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            print('click on edit');
                          },
                          child: Image(
                            image: AssetImage(
                              'grocerystore.png',
                            ),
                            fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          ),
                        ),
                      ),
                      Container(

//                            height:100,
//                          color:Colors.blue,
                          margin: EdgeInsets.only(
                              left: 20, right: 0, top: 0, bottom: 10),
                          child: Text(
                            "Grocery Store",
                            style: TextStyle(fontSize: 22),
                          )),
                    ],
                  ),
                  Container(
                    width: 320,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                    child: Divider(
//                        height:20,

                      color: Color(0xFF707070),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[Text("Order No.")],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[Text('154236')],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[Text("Status")],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[Text('Completed')],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 320,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                    child: Divider(
//                        height:20,

                      color: Color(0xFF707070),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(

//                            height:100,
//                          color:Colors.blue,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 20, bottom: 10),
                          child: Text(
                            "Total Amount : 56 ",
                            style: TextStyle(fontSize: 22),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 20),
              decoration: new BoxDecoration(
                border: new Border.all(
                    width: 0,
                    color: Color(
                        0xFFBCBCBC)), //color is transparent so that it does not blend with the actual color specified
                borderRadius:
                    const BorderRadius.all(const Radius.circular(0.0)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 0, top: 0, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            print('click on edit');
                          },
                          child: Image(
                            image: AssetImage(
                              'grocerystore2.png',
                            ),
                            fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          ),
                        ),
                      ),
                      Container(

//                            height:100,
//                          color:Colors.blue,
                          margin: EdgeInsets.only(
                              left: 20, right: 0, top: 0, bottom: 10),
                          child: Text(
                            "Grocery Store",
                            style: TextStyle(fontSize: 22),
                          )),
                    ],
                  ),
                  Container(
                    width: 320,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                    child: Divider(
//                        height:20,

                      color: Color(0xFF707070),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[Text("Order No.")],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[Text('154236')],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[Text("Status")],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[Text('Completed')],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 320,
                    margin:
                        EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                    child: Divider(
//                        height:20,

                      color: Color(0xFF707070),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(

//                            height:100,
//                          color:Colors.blue,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 20, bottom: 10),
                          child: Text(
                            "Total Amount : 56 ",
                            style: TextStyle(fontSize: 22),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

// ignore: unused_element

}
