import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/constants/constant.dart';
import 'package:permission_handler/permission_handler.dart';





class MapViewWidget extends StatefulWidget {
  const MapViewWidget({Key? key, required this.latitude,required this.longitude}) : super(key: key);
  final String? latitude;
  final String? longitude;

  @override
  State<MapViewWidget> createState() => _MapViewWidgetState();
}

// ...

class _MapViewWidgetState extends State<MapViewWidget> {
  GoogleMapController? _controller;
  Set<Polyline> _polylines = Set();
  Set<Marker> _markers = Set();
  double _distance = 0.0;
  String _duration = "";

  bool _isCurrentLocationMarked = false;

  List<LatLng> _routeCoordinates = [];

  double _currentLatitude = 0.0;
  double _currentLongitude = 0.0;

  Future<void> _fetchRoute() async {
    // Get the current location
    await _getCurrentLocation();

    // Check if the current location is available
    if (_currentLatitude != 0.0 && _currentLongitude != 0.0 && !_isCurrentLocationMarked) {

      _isCurrentLocationMarked = true;
      final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/directions/json?origin=$_currentLatitude,$_currentLongitude'
            '&destination=${widget.latitude},${widget.longitude}&key=$mapKey',
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final routes = data['routes'] as List;

        if (routes.isNotEmpty) {
          final points = routes[0]['overview_polyline']['points'];
          final decodedCoords = decodePolyline(points);
          _routeCoordinates = decodedCoords.map((point) {
            return LatLng(point[0], point[1]);
          }).toList();

          _distance = routes[0]['legs'][0]['distance']['value'] / 1000; // in kilometers
          _duration = routes[0]['legs'][0]['duration']['text'];

          _drawRoute(_routeCoordinates);
          _addMarkers();
        }
      }
    }
  }

  void _drawRoute(List<LatLng> routeCoords) {
    setState(() {
      _polylines.add(Polyline(
        polylineId: PolylineId('route'),
        color: Colors.blue,
        width: 5,
        points: routeCoords,
      ));
      _controller?.animateCamera(CameraUpdate.newLatLngZoom(routeCoords.first, 12));
    });
  }

  void _addMarkers() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('currentLocation'),
        position: _routeCoordinates.first,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        infoWindow: InfoWindow(title: 'currentLocation'),
      ));

      _markers.add(Marker(
        markerId: MarkerId('destination'),
        position: _routeCoordinates.last,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: 'Destination'),
      ));

    });
  }

  List<List<double>> decodePolyline(String encoded) {
    List<List<double>> poly = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1F) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1F) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      double latDouble = lat / 1e5;
      double lngDouble = lng / 1e5;

      poly.add([latDouble, lngDouble]);
    }
    return poly;
  }

  // Updated method to get current location
  Future<void> _getCurrentLocation() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        setState(() {
          _currentLatitude = position.latitude;
          _currentLongitude = position.longitude;

          // Check if the 'currentLocation' marker already exists
          if (_markers.any((marker) => marker.markerId.value == 'currentLocation')) {
            // If it exists, update its position
            _markers = _markers.map((marker) {
              if (marker.markerId.value == 'currentLocation') {
                return marker.copyWith(positionParam: LatLng(_currentLatitude, _currentLongitude));
              }
              return marker;
            }).toSet();
          } else {
            // If it doesn't exist, add the marker
            _markers.add(Marker(
              markerId: MarkerId('currentLocation'),
              position: LatLng(_currentLatitude, _currentLongitude),
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
              infoWindow: InfoWindow(title: 'Current Location'),
            ));
          }
        });
      } catch (e) {
        print("Error getting current location: $e");
      }
    } else {
      print("Location permission denied");
    }
  }

  @override
  Widget build(BuildContext context) {
    double latitude = double.parse(widget.latitude!);
    double longitude = double.parse(widget.longitude!);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 500,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: _routeCoordinates.isNotEmpty ? _routeCoordinates.first : LatLng(0, 0),
                zoom: 12,
              ),
              markers: _markers,
              polylines: _polylines,
              onMapCreated: (GoogleMapController controller) {
                setState(() {
                  _controller = controller;
                });
                _fetchRoute(); // Fetch and display the route when the map is created
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Distance: $_distance km\nDuration: $_duration'),
          )
        ],
      ),
    );
  }
}
