import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart'; // Add geolocator
import 'package:new_app/constants/constant.dart';
import 'package:new_app/widgets/appbar.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:web_socket_channel/io.dart';

class RouteDisplayMap extends StatefulWidget {
  final String from;
  final String to;

  const RouteDisplayMap({Key? key, required this.from, required this.to}) : super(key: key);

  @override
  State<RouteDisplayMap> createState() => _RouteDisplayMapState();
}

class _RouteDisplayMapState extends State<RouteDisplayMap> {
  GoogleMapController? _controller;
  Set<Polyline> _polylines = Set();
  Set<Marker> _markers = Set();

  double _distance = 0.0;
  String _duration = "";

  List<LatLng> _routeCoordinates = [];

  double _currentLatitude = 0.0;
  double _currentLongitude = 0.0;

  late final IOWebSocketChannel _webSocketChannel;
  late final String _webSocketUrl;

  _RouteDisplayMapState()
      : _webSocketUrl = 'ws://192.168.80.176:6001/app/taxi_app_key',
        _webSocketChannel = IOWebSocketChannel.connect('ws://192.168.80.176:6001/app/taxi_app_key');
  @override
  void initState() {
    super.initState();
    _fetchRoute();
    _getCurrentLocation();
    _listenToWebSocket();// Fetch current location
  }

  Future<void> _fetchRoute() async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/directions/json?origin=${widget.from}&destination=${widget.to}&key=$mapKey');

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
        markerId: MarkerId('origin'),
        position: _routeCoordinates.first,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: 'Origin'),
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

  // New method to get current location
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

          _markers.add(Marker(
            markerId: MarkerId('currentLocation'),
            position: LatLng(_currentLatitude, _currentLongitude),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
            infoWindow: InfoWindow(title: 'Current Location'),
          ));
        });
      } catch (e) {
        print("Error getting current location: $e");
      }
    } else {
      print("Location permission denied");
    }
  }


  void _listenToWebSocket() {
    _webSocketChannel.stream.listen((event) {
      // Handle WebSocket event (location update) here
      // Parse the event data and update the map accordingly
      _updateMapWithWebSocketEvent(event);
    });
  }

  void _updateMapWithWebSocketEvent(dynamic event) {
    try {
      final Map<String, dynamic> eventData = json.decode(event);
      final double latitude = eventData['latitude'];
      final double longitude = eventData['longitude'];

      // Update the map with the new location
      _updateCurrentLocation(LatLng(latitude, longitude));
    } catch (e) {
      print('Error parsing WebSocket event: $e');
    }
  }



  // void _updateCurrentLocation(LatLng newPosition) {
  //   setState(() {
  //     // Remove previous marker and add a new one at the updated position
  //     _markers.removeWhere((marker) => marker.markerId.value == 'currentLocation');
  //     _markers.add(Marker(
  //       markerId: MarkerId('currentLocation'),
  //       position: newPosition,
  //       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  //       infoWindow: InfoWindow(title: 'Current Location'),
  //     ));
  //
  //     // Optionally, move the camera to the updated location
  //     _controller?.animateCamera(CameraUpdate.newLatLngZoom(newPosition, 12));
  //   });
  // }

  void _updateCurrentLocation(LatLng newPosition) {
    LatLng currentLatLng = _markers
        .where((marker) => marker.markerId.value == 'currentLocation')
        .first
        .position;

    // Calculate the number of steps for the animation
    int numSteps = 100;
    double latStep = (newPosition.latitude - currentLatLng.latitude) / numSteps;
    double lngStep = (newPosition.longitude - currentLatLng.longitude) / numSteps;

    // Use a timer to update the marker's position gradually
    Timer.periodic(Duration(milliseconds: 20), (timer) {
      if (numSteps <= 0) {
        timer.cancel();
      } else {
        numSteps--;
        currentLatLng = LatLng(
          currentLatLng.latitude + latStep,
          currentLatLng.longitude + lngStep,
        );

        setState(() {
          _markers.removeWhere((marker) => marker.markerId.value == 'currentLocation');
          _markers.add(Marker(
            markerId: MarkerId('currentLocation'),
            position: currentLatLng,
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
            infoWindow: InfoWindow(title: 'Current Location'),
          ));
        });

        // Optionally, move the camera to the updated location
        _controller?.animateCamera(CameraUpdate.newLatLngZoom(currentLatLng, 12));
      }
    });
  }


  @override
  void dispose() {
    _webSocketChannel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Current location ${_currentLatitude} and ${_currentLongitude}");
    print("Markers-->${_markers}");
    return Scaffold(
      appBar: appBars(text: 'Direction'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                height:500,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: _routeCoordinates.isNotEmpty ? _routeCoordinates.first : LatLng(0, 0),
                    zoom: 12,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller = controller;
                  },
                  polylines: _polylines,
                  markers: _markers,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Distance: $_distance km\nDuration: $_duration',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
