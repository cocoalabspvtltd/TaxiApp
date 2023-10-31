// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_app/controller/home/home_controller.dart';

class WWMapScreen extends StatelessWidget {
  final LatLng _origin = LatLng(37.7749, -122.4194);
  final LatLng _destination = LatLng(34.0522, -118.2437);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: _origin,
        zoom: 12.0,
      ),
      onMapCreated: (GoogleMapController controller) {
        Get.find<HomeController>().mapController = controller;
      },
      // polylines: {
      //   Polyline(
      //     polylineId: PolylineId('route'),
      //     width: 1,
      //     color: Colors.blue,
      //     points: [
      //       _origin,
      //       _destination,
      //     ],
      //   ),
      // },
    );
  }
}
