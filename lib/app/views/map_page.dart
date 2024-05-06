import 'dart:math';

import 'package:Indiana/app/widgets/shared/navbar.dart';
import 'package:Indiana/app/widgets/topnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  List<LatLng> generateRandomPoints(int numberOfPoints) {
    // Coordinates of Bordeaux
    double latMin = 44.78;
    double latMax = 44.91;
    double lngMin = -0.65;
    double lngMax = -0.52;

    List<LatLng> points = [];

    for (int i = 0; i < numberOfPoints; i++) {
      double lat = latMin + Random().nextDouble() * (latMax - latMin);
      double lng = lngMin + Random().nextDouble() * (lngMax - lngMin);
      points.add(LatLng(lat, lng));
    }

    return points;
  }

  @override
  Widget build(BuildContext context) {
    List<LatLng> points = generateRandomPoints(10); // Generate 10 random points

    return Scaffold(
        body: FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(46.526068030015765, 2.4714261461279303),
        initialZoom: 16,
        minZoom: 0,
        maxZoom: 19,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName:
              'net.tlserver6y.flutter_map_location_marker.example',
          maxZoom: 19,
        ),
        CurrentLocationLayer(
          alignPositionOnUpdate: AlignOnUpdate.once,
        ),
        MarkerLayer(
          markers: points
              .map((point) => Marker(
                    width: 40.0,
                    height: 40.0,
                    point: point,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 40.0,
                    ),
                  ))
              .toList(),
        )
      ],
    ));
  }

  //Make a function that returns a list of markers from a get request to an api with the current position from CurrentLocationLayer as a parameter
/*
  List<Marker> getMarkers() {
    return [
      Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(46.526068030015765, 2.4714261461279303),
        builder: (ctx) => Container(
          child: Icon(
            Icons.location_on,
            color: Colors.red,
            size: 50.0,
          ),
        ),
      ),
    ];
  }
  */
}
