import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/widgets/appbar.dart';

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


  @override
  void initState() {
    super.initState();
    _fetchRoute();
  }

  Future<void> _fetchRoute() async {
    final apiKey = 'AIzaSyDy3Rzk-XTAYChohLh292AJH_VFyTlYm9A';
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/directions/json?origin=${widget.from}&destination=${widget.to}&key=$apiKey');

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



  @override
  Widget build(BuildContext context) {
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

