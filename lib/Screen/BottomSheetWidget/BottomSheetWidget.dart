import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kudozka_rider_app/Screen/Verification/Verification.dart';

Timer _timer;
int _start = 60;





class BottomSheetWidget extends StatefulWidget{
//  String Fajr,Zohr,Asr,Magrib,Esha,Masjid,juma;
//
//  BottomSheetWidget(this.Fajr,this.Zohr,this.Asr,this.Magrib,this.Esha,this.Masjid,this.juma);


  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {


  @override
  Widget build(BuildContext context){

    return Container(
      height:520,

        color: Colors.transparent,

//        color: Color(0xFFf7eeef).withOpacity(),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
//          SizedBox(height:30),
          Container(
              margin: EdgeInsets.only(bottom:50),
            height:330,

            decoration: BoxDecoration(


              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(blurRadius: 0,color: Colors.white,spreadRadius:0,)
              ]
            ),
            child:Column(children: <Widget>[
                  DecoratedTextField(),

            ],)
          )
        ],
      )
    );
  }
}

 class  DecoratedTextField extends StatefulWidget{
//  String Fajr,Zohr,Asr,Magrib,Esha,Masjid,juma;
//
//  DecoratedTextField(this.Fajr,this.Zohr,this.Asr,this.Magrib,this.Esha,this.Masjid,this.juma);


  @override
  _DecoratedTextFieldState createState() => _DecoratedTextFieldState();
}

class _DecoratedTextFieldState extends State<DecoratedTextField> {

  void initState() {
    startTimer();

    super.initState();
  }

  var flag ="";

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    return (flag== "")?Container(
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         boxShadow: [
         BoxShadow(blurRadius: 0,color: Colors.white,spreadRadius:0,)
            ]
        ),

//      width:300,
      alignment: Alignment.topRight,

      child:Column(
        children: <Widget>[
          SizedBox(height:7),
          Container(
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: AssetImage('assets/grocerystore.png'),
                fit: BoxFit.cover,
                height: 50,
              ),


              Container(

//                  color: Colors.blue,
                child:
                Text("Grocery Store",textAlign: TextAlign.start,style: TextStyle(
                  fontFamily: 'circular',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),





              Container(

                child: Card(
//                          color: Colors.transparent,
                  shadowColor: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      print('click on edit');
                    },
                    child: Image(
                      image: AssetImage('call.png',),
                      fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                    ),
                  ),
                ),


              ),
            ],
          ),
      ),
          SizedBox(height:7),
          Container(
            width:320,
            margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
            child:  Divider(
//                        height:20,

              color:Color(0xFF707070),
            ),
          ),
          Container(
            child:

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/Group.png'),
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ],
            ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width:300,
//                  color: Colors.blue,
                          child:
                          Text("START LOCATION",textAlign: TextAlign.start,style: TextStyle(
                            fontFamily: 'circular',
                            fontSize: 14,
                            color: Colors.grey,
                          ),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width:300,
//                  color: Colors.blue,
                          child:
                          Text("Galfend House Crn First/Speke Street,Harare",textAlign: TextAlign.start,style: TextStyle(
                            fontFamily: 'circular',
                            fontSize: 14,
                          ),),
                        ),
                      ],
                    ),
                    Container(
                      width:280,
                      margin: EdgeInsets.only(left:0,right:20,top:0,bottom: 0),
                      child:  Divider(
//                        height:20,

                        color:Color(0xFF707070),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width:300,
//                  color: Colors.blue,
                          child:
                          Text("START LOCATION",textAlign: TextAlign.start,style: TextStyle(
                            fontFamily: 'circular',
                            fontSize: 14,
                            color: Colors.grey,
                          ),),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width:300,
//                  color: Colors.blue,
                          child:
                          Text("Galfend House Crn First/Speke Street,Harare",textAlign: TextAlign.start,style: TextStyle(
                            fontFamily: 'circular',
                            fontSize: 14,
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),










              ],
            ),
          ),
          Container(
            width:320,
            margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
            child:  Divider(
//                        height:20,

              color:Color(0xFF707070),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("00:$_start",style: TextStyle(fontSize: 24.0),)
            ],
          ),
          Container(
            width:320,
            margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
            child:  Divider(
//                        height:20,

              color:Color(0xFF707070),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: ()async {


},
//

                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0),side: BorderSide(color: Color(0xFF25aae1))),
                textColor: Colors.black,
                elevation: 0.0,
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  width: 120,
                  height:60,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),

                      color: Colors.white
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: const Text('Total Amount \n 70',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 12,fontFamily: "circular")),



                ),
              ),
              RaisedButton(
                onPressed: ()async {
                  setState(() {
                    flag = "accepted";

                  });

//    Navigator.push(
//    context,
//    MaterialPageRoute(
//    builder: (context) => Verification()));


//
                },
//

                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0),side: BorderSide(color: Color(0xFF25aae1))),
                textColor: Colors.white,
                elevation: 0.0,
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  width: 120,
                  height:60,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),

                      color:Color(0xFF25aae1),

                  ),
                  padding: const EdgeInsets.all(15.0),
                  child:const Text('Accept',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,fontFamily: "circular"))



                ),
              ),
            ],
          ),


        ],
      )



    ):(flag == "accepted")?
    Container (
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 0,color: Colors.white,spreadRadius:0,)
            ]
        ),

//      width:300,
        alignment: Alignment.topRight,

        child:Column(
          children: <Widget>[
            SizedBox(height:7),
            Container(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/grocerystore.png'),
                    fit: BoxFit.cover,
                    height: 50,
                  ),


                  Container(

//                  color: Colors.blue,
                    child:
                    Text("Grocery Store",textAlign: TextAlign.start,style: TextStyle(
                      fontFamily: 'circular',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),





                  Container(

                    child: Card(
//                          color: Colors.transparent,
                      shadowColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print('click on edit');
                        },
                        child: Image(
                          image: AssetImage('call.png',),
                          fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                        ),
                      ),
                    ),


                  ),
                ],
              ),
            ),
            SizedBox(height:7),
            Container(
              width:320,
              margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
              child:  Divider(
//                        height:20,

                color:Color(0xFF707070),
              ),
            ),
            Container(
              child:

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/Group.png'),
                        fit: BoxFit.cover,
                        height: 60,
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("START LOCATION",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                              color: Colors.grey,
                            ),),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("Galfend House Crn First/Speke Street,Harare",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                            ),),
                          ),
                        ],
                      ),
                      Container(
                        width:280,
                        margin: EdgeInsets.only(left:0,right:20,top:0,bottom: 0),
                        child:  Divider(
//                        height:20,

                          color:Color(0xFF707070),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("START LOCATION",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                              color: Colors.grey,
                            ),),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("Galfend House Crn First/Speke Street,Harare",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),










                ],
              ),
            ),
            Container(
              width:320,
              height: 10  ,
              margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
              child:  Divider(
//                        height:20,

                color:Color(0xFF707070),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(left:30,bottom:20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width:200,
                      margin: EdgeInsets.only(top:10),
                      child: Text("Customer Name",textAlign: TextAlign.start,style: TextStyle(
                        fontFamily: 'circular',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),),
                    ),
                    Container(

                        width:200,
                      child: Text("Mr.zubair",textAlign: TextAlign.start,style: TextStyle(
                        fontFamily: 'circular',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),

                  ],
//                  color: Colors.blue,


                ),
            ),







                Container(
                  margin: EdgeInsets.only(right:30),
                  child: Card(
//                          color: Colors.transparent,
                    shadowColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        print('click on edit');
                      },
                      child: Image(
                        image: AssetImage('call.png',),
                        height: 40,
                        fit: BoxFit.cover,


//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                      ),
                    ),
                  ),


                ),
              ],
            ),
            Container(
              width:320,
              margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
              child:  Divider(
//                        height:20,

                color:Color(0xFF707070),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: ()async {


                  },
//

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0),side: BorderSide(color: Color(0xFF25aae1))),
                  textColor: Colors.black,
                  elevation: 0.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: 120,
                    height:55,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),

                        color: Colors.white
                    ),
                    padding: const EdgeInsets.all(14.0),
                    child: const Text('Total Amount \n 70',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 12,fontFamily: "circular")),



                  ),
                ),
                RaisedButton(
                  onPressed: ()async {
                    setState(() {
                      flag = "Delivered";

                    });

//    Navigator.push(
//    context,
//    MaterialPageRoute(
//    builder: (context) => Verification()));


//
                  },
//

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0),side: BorderSide(color: Color(0xFF25aae1))),
                  textColor: Colors.white,
                  elevation: 0.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                      width: 120,
                      height:55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),

                        color:Color(0xFFDEAC06),

                      ),
                      padding: const EdgeInsets.all(15.0),
                      child:const Text('Picked Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18,fontFamily: "circular"))



                  ),
                ),
              ],
            ),


          ],
        )



    ):
    Container (
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 0,color: Colors.white,spreadRadius:0,)
            ]
        ),

//      width:300,
        alignment: Alignment.topRight,

        child:Column(
          children: <Widget>[
            SizedBox(height:7),
            Container(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/grocerystore.png'),
                    fit: BoxFit.cover,
                    height: 50,
                  ),


                  Container(

//                  color: Colors.blue,
                    child:
                    Text("Grocery Store",textAlign: TextAlign.start,style: TextStyle(
                      fontFamily: 'circular',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),





                  Container(

                    child: Card(
//                          color: Colors.transparent,
                      shadowColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print('click on edit');
                        },
                        child: Image(
                          image: AssetImage('call.png',),
                          fit: BoxFit.cover,

//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                        ),
                      ),
                    ),


                  ),
                ],
              ),
            ),
            SizedBox(height:7),
            Container(
              width:320,
              margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
              child:  Divider(
//                        height:20,

                color:Color(0xFF707070),
              ),
            ),
            Container(
              child:

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/dot.png'),
                        fit: BoxFit.cover,
                        height: 60,
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("START LOCATION",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                              color: Colors.grey,
                            ),),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("Galfend House Crn First/Speke Street,Harare",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                            ),),
                          ),
                        ],
                      ),
                      Container(
                        width:280,
                        margin: EdgeInsets.only(left:0,right:20,top:0,bottom: 0),
                        child:  Divider(
//                        height:20,

                          color:Color(0xFF707070),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("START LOCATION",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                              color: Colors.grey,
                            ),),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width:300,
//                  color: Colors.blue,
                            child:
                            Text("Galfend House Crn First/Speke Street,Harare",textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'circular',
                              fontSize: 14,
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),










                ],
              ),
            ),
            Container(
              width:320,
              height: 10  ,
              margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
              child:  Divider(
//                        height:20,

                color:Color(0xFF707070),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(left:30,bottom:20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width:200,
                        margin: EdgeInsets.only(top:10),
                        child: Text("Customer Name",textAlign: TextAlign.start,style: TextStyle(
                          fontFamily: 'circular',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),),
                      ),
                      Container(

                        width:200,
                        child: Text("Mr.zubair",textAlign: TextAlign.start,style: TextStyle(
                          fontFamily: 'circular',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),

                    ],
//                  color: Colors.blue,


                  ),
                ),







                Container(
                  margin: EdgeInsets.only(right:30),
                  child: Card(
//                          color: Colors.transparent,
                    shadowColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        print('click on edit');
                      },
                      child: Image(
                        image: AssetImage('call.png',),
                        height: 40,
                        fit: BoxFit.cover,


//                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                      ),
                    ),
                  ),


                ),
              ],
            ),
            Container(
              width:320,
              margin: EdgeInsets.only(left:0,right:0,top:0,bottom: 0),
              child:  Divider(
//                        height:20,

                color:Color(0xFF707070),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: ()async {


                  },
//

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0),side: BorderSide(color: Color(0xFF25aae1))),
                  textColor: Colors.black,
                  elevation: 0.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: 120,
                    height:55,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),

                        color: Colors.white
                    ),
                    padding: const EdgeInsets.all(14.0),
                    child: const Text('Total Amount \n 70',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 12,fontFamily: "circular")),



                  ),
                ),
                RaisedButton(
                  onPressed: ()async {
                    setState(() {
                      flag = "Delivered";

                    });

    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Verification()));


//
                  },
//

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(3.0),side: BorderSide(color: Color(0xFF25aae1))),
                  textColor: Colors.white,
                  elevation: 0.0,
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                      width: 120,
                      height:55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),

                        color:Color(0xFF399959),

                      ),
                      padding: const EdgeInsets.all(15.0),
                      child:const Text('Delivered',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18,fontFamily: "circular"))



                  ),
                ),
              ],
            ),


          ],
        )



    );
  }
}


class SheetButton extends StatefulWidget{
     SheetButton({Key key}):super(key:key);

     _SheetButtonState createState()=> _SheetButtonState();
}


class _SheetButtonState extends State<SheetButton>{
  bool checkingFlight=false  ;
  bool sucess =false ;

  @override
  Widget build(BuildContext context){
    return !checkingFlight
        ?MaterialButton(
      color:Colors.green[800],
      onPressed: (){

      },
      child:Text("checkFlight",),
    )
        : !sucess
        ? CircularProgressIndicator()
        :Icon(
      Icons.check,
      color: Colors.green,
    );
  }
}