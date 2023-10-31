import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/core/packages/geocode/geocodingModel.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/custom_print.dart';

@LazySingleton()
class GoogleGeocoding {
  static const _host = 'https://maps.google.com/maps/api/geocode/json';
  static const apiKey = mapKey;

  // final String? language;
  // final Map<String, Object>? headers;
  // final bool preserveHeaderCase;

  String language = 'en';

  final Client _httpClient;

  // GoogleGeocoding({
  //   // this.language,
  //   // this.headers,
  //   // this.preserveHeaderCase = false,
  // }) : _httpClient = Client();

  GoogleGeocoding() : _httpClient = Client();

  Future<List<Address>> findAddressesFromCoordinates(
      Coordinates coordinates) async {
    final url =
        '$_host?key=$apiKey${language != null ? '&language=' + language! : ''}&latlng=${coordinates.latitude},${coordinates.longitude}';
    return await _send(url) ?? const <Address>[];
  }

  Future<List<Address>> findAddressesFromQuery(String address) async {
    var encoded = Uri.encodeComponent(address);
    customPrint('encode address : $encoded');
    final url = '$_host?key=$apiKey&address=$encoded';
    return await _send(url) ?? const <Address>[];
  }

  Future<List<Address>?> _send(String url) async {
    //print("Sending $url...");
    final uri = Uri.parse(url);
    final response = await _httpClient.get(uri);

    // if (headers != null) {
    //   headers!.forEach((key, value) {
    //     request.headers.add(key, value, preserveHeaderCase: preserveHeaderCase);
    //   });
    // }
    // final response = await request.close();

    final responseBody =
        response.body; //await utf8.decoder.bind(response).join();
    log(responseBody.toString());

    var data = jsonDecode(responseBody);

    var results = data["results"];

    if (results == null) return null;

    return results
        .map(_convertAddress)
        .map<Address>((map) => Address.fromMap(map))
        .toList();
  }

  Map? _convertCoordinates(dynamic geometry) {
    if (geometry == null) return null;

    var location = geometry["location"];
    if (location == null) return null;

    return {
      "latitude": location["lat"],
      "longitude": location["lng"],
    };
  }

  Map _convertAddress(dynamic data) {
    Map result = Map();

    result["coordinates"] = _convertCoordinates(data["geometry"]);
    result["addressLine"] = data["formatted_address"];

    var addressComponents = data["address_components"];

    addressComponents.forEach((item) {
      List types = item["types"];

      if (types.contains("route")) {
        result["thoroughfare"] = item["long_name"];
      } else if (types.contains("street_number")) {
        result["subThoroughfare"] = item["long_name"];
      } else if (types.contains("country")) {
        result["countryName"] = item["long_name"];
        result["countryCode"] = item["short_name"];
      } else if (types.contains("locality")) {
        result["locality"] = item["long_name"];
      } else if (types.contains("postal_code")) {
        result["postalCode"] = item["long_name"];
      } else if (types.contains("postal_code")) {
        result["postalCode"] = item["long_name"];
      } else if (types.contains("administrative_area_level_1")) {
        result["adminArea"] = item["long_name"];
        result["adminAreaCode"] = item["short_name"];
      } else if (types.contains("administrative_area_level_2")) {
        result["subAdminArea"] = item["long_name"];
      } else if (types.contains("sublocality") ||
          types.contains("sublocality_level_1")) {
        result["subLocality"] = item["long_name"];
      } else if (types.contains("premise")) {
        result["featureName"] = item["long_name"];
      }

      result["featureName"] = result["featureName"] ?? result["addressLine"];
    });

    return result;
  }
}
