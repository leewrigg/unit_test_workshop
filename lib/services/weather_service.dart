import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:unit_test_workshop/models/lat_lng.dart';
import 'package:unit_test_workshop/models/weather.dart';

// API: https://www.weatherapi.com/docs/

class WeatherAPI {
  static const _apiKey = 'beb10d2f71d04ceeb28105452230303';

  Future<Weather> getWeather(LatLng latLng) async {
    final uri = Uri.parse(
      'http://api.weatherapi.com/v1/current.json?q=${latLng.lat},${latLng.lng}&key=$_apiKey',
    );

    final response = await http.get(uri);

    return Weather.fromJson(
      jsonDecode(response.body),
    );
  }
}
