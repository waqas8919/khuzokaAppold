import 'dart:async';

import 'package:flutter/material.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_map_polyline/google_map_polyline.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoder/geocoder.dart';
import 'package:getflutter/getflutter.dart';
import 'package:kudozka_rider_app/Screen/BottomSheetWidget/BottomSheetWidget.dart';

double lat;
double long;
LocationData currentLocation;

final String assetName = 'assets/equalizer.svg';

void main() {
  runApp(Lugares());
  GoogleMapPolyline googleMapPolyline =
      new GoogleMapPolyline(apiKey: "AIzaSyAEsyIuP49m5EkEvv5tM7Dryg7DJTGlSAo");
}

final size = 0;

class Lugares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cleanup',
      home: MapSample(''),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: must_be_immutable
class MapSample extends StatefulWidget {
  MapSample(this.a);

  String a;

  @override
  State<MapSample> createState() => MapSampleState();
}

String b;
String phone;
int length;

class MapSampleState extends State<MapSample> {
  GoogleMapController mapController;
  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];

  PolylinePoints polylinePoints = PolylinePoints();
  String apiKey = "AIzaSyAEsyIuP49m5EkEvv5tM7Dryg7DJTGlSAo";
  double _originLatitude, _originLongitude;

  double _destLatitude, _destLongitude;
  String token;
  bool _show = false;
  var first;
  final currentTime = DateTime.now();
  BitmapDescriptor myIcon;

  @override
  void initState() {
//    _currentLocation();
//    crearmarcadores();
//    TimeChecker();
//    getSharedVariables();

//    _getPolyline();

    super.initState();
  }

  var fajar,
      zohr,
      asr,
      magrib,
      isha,
      jummad,
      maslaq,
      currentnamaztime,
      masjidloaction;
  var namazname = "Zohr",
      nextnamaz = "Asr",
      namaztime = "01:10:00",
      nextnamaztime = "5:00:00",
      masjidname = "Akhiyar";
  int userId, maslaqId;

  var timecheck = true;

//  getSharedVariables() async {
//    SharedPreferences pref = await SharedPreferences.getInstance();
//    token = pref.getString('Token') ?? '';
//    userId = pref.getInt("userId") ?? 0;
//    maslaqId = pref.getInt("maslaqId") ?? 0;
//
//    print('===========================$token');
//    setState(() {
//      _isLoading = true;
//      _mosque(token);
//    });
//
//    Future.delayed(const Duration(milliseconds: 40), () {});
//  }

//  Future<Uint8List> getBytesFromAsset(String path, int width) async {
//    ByteData data = await rootBundle.load(path);
//    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
//        targetWidth: width);
//    ui.FrameInfo fi = await codec.getNextFrame();
//    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
//        .buffer
//        .asUint8List();
//  }

//  void initMarker(cleanup,) async {
//    var lat = double.parse('${cleanup['location_lat']}');
//    var long = double.parse('${cleanup['location_long']}');
//
//    var markerIdVal = length.toString();
//    final MarkerId markerId = MarkerId(markerIdVal);
//    final Uint8List markerIcon = await getBytesFromAsset(
//      'assets/mapicon.png',
//      50,
//    );
//    final Uint8List markerIcon1 = await getBytesFromAsset(
//      'assets/remaningtime.png',
//      50,
//    );
//
//    setState(() {
//      _isLoading = false;
//    });
//    // creating a new MARKERS
//
//    final Marker marker = Marker(
//      infoWindow: InfoWindow(
//          title: "${cleanup['masjid']['name']}",
//          snippet: " $namazname : ${cleanup['zuhur_time']} | 14 Mins Left",
//
//          onTap: () {
//            setState(() {
//              setState(() {
//                _show = true;
//              });
//
//              showModalBottomSheet(
//                  elevation: 0,
//                  context: context,
//                  backgroundColor: Colors.transparent,
//                  barrierColor: Colors.black.withAlpha(1),
//                  clipBehavior: Clip.hardEdge,
//                  isDismissible: false,
//                  builder: (BuildContext bc) {
//                    return GestureDetector(
//                      onTap: () {
//                        setState(() {
//                          _show = false;
//                        });
//                        Navigator.of(context).pop();
//                      },
//                      child: BottomSheetWidget(
//                        '${cleanup['fajar_time']}',
//                        '${cleanup['zuhur_time']}',
//                        '${cleanup['asar_time']}',
//                        '${cleanup['magrib_time']}',
//                        '${cleanup['isha_time']}',
//                        '${cleanup['masjid']['name']}',
//                        '${cleanup['jumma_time']}',
//                      ),
//                    );
//                  });
//
//
//              masjidname = "${cleanup['masjid']['name']}";
//              fajar = "${cleanup['fajar_time']}";
//              zohr = "${cleanup['zuhur_time']}";
//              asr = "${cleanup['asar_time']}";
//              magrib = "${cleanup['asar_time']}";
//              isha = "${cleanup['asar_time']}";
//              jummad = "${cleanup['asar_time']}";
//            });
//          }),
//      markerId: markerId,
//      position: LatLng(lat, long),
//      // final Uint8List markerIcon = await getBytesFromAsset('X.png', 100);
//      icon: BitmapDescriptor.fromBytes(markerIcon1),
//      visible: true,
//
//      onTap: () {},
//    );
//
//    final Marker marker1 = Marker(
//      infoWindow: InfoWindow(
//          title: "${cleanup['masjid']['name']}",
//          snippet: " $namazname : ${cleanup['zuhur_time']} | 14 Mins Left",
//          onTap: () {
//            setState(() {
//              setState(() {
//                _show = true;
//              });
//
//              showModalBottomSheet(
//                  elevation: 0,
//                  context: context,
//                  backgroundColor: Colors.transparent,
//                  barrierColor: Colors.black.withAlpha(1),
//                  clipBehavior: Clip.hardEdge,
//                  isDismissible: false,
//                  builder: (BuildContext bc) {
//                    return GestureDetector(
//                      onTap: () {
//                        setState(() {
//                          _show = false;
//                        });
//                        Navigator.of(context).pop();
//                      },
//                      child: BottomSheetWidget(
//                        '${cleanup['fajar_time']}',
//                        '${cleanup['zuhur_time']}',
//                        '${cleanup['asar_time']}',
//                        '${cleanup['magrib_time']}',
//                        '${cleanup['isha_time']}',
//                        '${cleanup['masjid']['name']}',
//                        '${cleanup['jumma_time']}',
//                      ),
//                    );
//                  });
//
//              masjidname = "${cleanup['masjid']['name']}";
//              fajar = "${cleanup['fajar_time']}";
//              zohr = "${cleanup['zuhur_time']}";
//              asr = "${cleanup['asar_time']}";
//              magrib = "${cleanup['asar_time']}";
//              isha = "${cleanup['asar_time']}";
//              jummad = "${cleanup['asar_time']}";
//            });
//          }),
//      markerId: markerId,
//      position: LatLng(lat, long),
//      // final Uint8List markerIcon = await getBytesFromAsset('X.png', 100);
//      icon: BitmapDescriptor.fromBytes(markerIcon),
//      visible: true,
//
//      onTap: () {},
//    );
//
//    setState(() {
//      // adding a new marker to map
////      markers[markerId] = marker1;
//      if (timecheck == true) {
//        markers[markerId] = marker;
//      } else {
//        markers[markerId] = marker1;
//      }
//    });
//  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(24.9295395, 67.1129116),
    zoom: 15.4746,
  );

  getUserLocation(lat, long) async {
    //call this async method from whereever you need

    final coordinates = new Coordinates(lat, long);
    var addresses =
        await Geocoder.google('AIzaSyAEsyIuP49m5EkEvv5tM7Dryg7DJTGlSAo')
            .findAddressesFromCoordinates(coordinates);
    first = addresses.first;
    print(
        ' ${first.locality}, ${first.adminArea},${first.subLocality}, ${first.subAdminArea},${first.addressLine}, ${first.featureName}');
    print('${first.locality}');
    setState(() {
      masjidloaction = " ${first.adminArea}";
    });
    return first;
  }

  List<DropdownMenuItem<String>> maslaqs = [];

  void loadData4() {
//    priceFilter= true;
    maslaqs = [];
    maslaqs.add(new DropdownMenuItem(
      child: new Text('shia'),
      value: 'shia',
    ));
    maslaqs.add(new DropdownMenuItem(
      child: new Text('sunni'),
      value: 'sunni',
    ));
    maslaqs.add(new DropdownMenuItem(
      child: new Text('deobandi'),
      value: 'deobandi',
    ));
    maslaqs.add(new DropdownMenuItem(
      child: new Text('ahle-hadees'),
      value: 'ahle-hadees',
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData4();
    return new WillPopScope(
        onWillPop: () => Navigator.push(
              context,
              MaterialPageRoute(),
            ),
        child: new Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              getOverlayWidget(),
              getScrollableBody(),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: (_show == false)
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      print("========================))))))))))))))))))open");
                      setState(() {
                        _show = true;
                      });

                      showModalBottomSheet(
                          elevation: 0,
                          context: context,
                          backgroundColor: Colors.transparent,
                          barrierColor: Colors.black.withAlpha(1),
                          clipBehavior: Clip.hardEdge,
                          isDismissible: false,
                          builder: (BuildContext bc) {
                            return GestureDetector(
                              onTap: () {},
                              child: BottomSheetWidget(),
                            );
                          });
                    },
                    child: Container(

//          weight:50,
                        child: IconButton(
                            icon: new Image.asset(
                              'assets/back.png',
                              height: 35,
                              width: 35,
                            ),
                            onPressed: null),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xFF25AAE1))),
                    backgroundColor: Colors.transparent,
                  ),

//          mini: true,
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 330.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      print("=================================>close");

                      setState(() {
                        _show = false;
                      });
                      showModalBottomSheet(
                          elevation: 0,
                          context: context,
                          backgroundColor: Colors.transparent,
                          barrierColor: Colors.black.withAlpha(1),
                          clipBehavior: Clip.hardEdge,
                          isDismissible: false,
                          builder: (BuildContext bc) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _show = false;
                                });
                                Navigator.of(context).pop();
                              },
                            );
                          });
                    },
                    child: Container(

//          weight:50,
                        child: IconButton(
                            icon: new Image.asset(
                              'assets/forward.png',
                              height: 35,
                              width: 35,
                            ),
                            onPressed: null),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xFF25AAE1))),
                    backgroundColor: Colors.transparent,
                  ),

//          mini: true,
                ),
        ));
  }

  var selected;
  bool isChecked = true;
  bool status = false;
  List<DropdownMenuItem<String>> timing = [];

  Widget getOverlayWidget() {
    return Stack(
      children: <Widget>[
        Container(
          width: 454,
          height: 211,
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .transparent), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
            color: Colors.white.withOpacity(
                0.3), // Specifies the background color and the opacity
          ),
        ),
        Container(
          height: 140,
          width: 450,
          margin: EdgeInsets.only(left: 1),
          decoration: new BoxDecoration(
            border: new Border.all(
                width: 0,
                color: Colors
                    .white), //color is transparent so that it does not blend with the actual color specified
            borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
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
                .blue), //color is transparent so that it does not blend with the actual color specified
        borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
        // Specifies the background color and the opacity
      ),
      margin: EdgeInsets.only(
        top: 130,
      ),
      height: 600,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
          mapController.setMapStyle(
              '[{"featureType": "poi.place_of_worship","stylers": [{ "visibility": "off" }]}]');
        },

        tiltGesturesEnabled: true,
        compassEnabled: true,
        scrollGesturesEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        zoomGesturesEnabled: true,
        mapToolbarEnabled: false,
        buildingsEnabled: false,
//          trafficEnabled: true,
        markers: Set<Marker>.of(markers.values),
        polylines: Set<Polyline>.of(polylines.values),
      ),
    );
  }

  // ignore: unused_element
  void _currentLocation() async {
    final GoogleMapController controller = await _controller.future;

    var location = new Location();
    try {
      currentLocation = await location.getLocation();
    } on Exception {
      currentLocation = null;
    }
    lat = currentLocation.latitude;
    long = currentLocation.longitude;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: LatLng(currentLocation.latitude, currentLocation.longitude),
        zoom: 10.0,
      ),
    ));
  }
//  _addPolyLine() {
//    PolylineId id = PolylineId("poly");
//    print("====================================>");
//    Polyline polyline = Polyline(
//        polylineId: id, color: Colors.red, points: polylineCoordinates);
//    polylines[id] = polyline;
//    setState(() {});
//  }

//  _getPolyline(double latitude,double longitude) async {
//    print("====$lat,$long");
//    print("====$latitude,$longitude");
//
//    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//        apiKey,
//        PointLatLng(latitude, longitude),
//        PointLatLng(lat, long),
//        travelMode: TravelMode.walking,
////        wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]
//    );
//    if (result.points.isNotEmpty) {
//      result.points.forEach((PointLatLng point) {
//        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
//      });
//    }
//    _addPolyLine();
//  }
}

class MapUtils {
  static openMap(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/dir/$latitude,$longitude/$lat,$long';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}

class UserLocation {
  final double latitude;
  final double longitude;

  UserLocation({this.latitude, this.longitude});
}
