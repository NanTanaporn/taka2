import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
// ignore: unused_import
import 'package:geolocator/geolocator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google Maps Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  // ignore: unused_field

  LatLng currentLacation = LatLng(13.7607218, 100.4501805);
  // ignore: unused_field
  GoogleMapController _mapController;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: <Widget>[
                GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: currentLacation, zoom: 14.8),
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                ),
                // Positioned(
                //   top: 40,
                //   left: 10,
                //   child: Container(
                //     child: new IconButton(
                //       icon: new Icon(Icons.arrow_back),
                //        onPressed: () {
                //          Navigator.push(
                //              context,
                //              MaterialPageRoute(
                //                  builder: (context) => EditScreen()));
                //        }
                //     ),

                //     // child: Icon(
                //     //   Icons.arrow_back,
                //     //   size: 28,
                //   ),
                // ),
                Positioned(
                    bottom: 10,
                    right: 10,
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.gps_fixed,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
                //แถบด้านล่าง
                child: Column(
              children: [
                Container(
                  height: 30,
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 10, right: 15, left: 15),
                  //decoration: BoxDecoration(color: Colors.red[300]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Text(
                            " คุณตั้งใจจะไปไหน?",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Container(
                        width: 10,
                        height: 10,
                        child: Icon(
                          Icons.radio_button_checked,
                          color: Colors.black,
                        ),
                      ),
                      hintText: "ตำแหน่องปัจจุบันของคุณ",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 8.0, top: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Container(
                        width: 10,
                        height: 10,
                        child: Icon(
                          Icons.place_outlined,
                          color: Colors.black,
                        ),
                      ),
                      hintText: "จุดหมายปลายทาง",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 8.0, top: 16.0),
                    ),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
