import 'dart:math';

import 'package:unit_test_workshop/models/lat_lng.dart';
import 'package:unit_test_workshop/services/weather_service.dart';

class Counter {
  final weatherService = WeatherAPI();

  static const _leedsLatLng = LatLng(53.800755, -1.549077);

  int value = 0;
  int valueChangedCount = 0;

  void increment() {
    value = ++value;
    valueChangedCount++;
  }

  void decrement() {
    value = value - 1;
    valueChangedCount++;
  }

  void reset() {
    value = 0;
    valueChangedCount = 0;
  }

  void random() {
    value += Random().nextInt(10) - 5;
    valueChangedCount++;
  }

  Future<void> weather() async {
    valueChangedCount++;

    final weather = await weatherService.getWeather(_leedsLatLng);
    print(weather);

    if (weather.isGoodWeather) {
      value = value + weather.temp.floor();
    } else {
      value = value - weather.temp.floor();
    }
  }
}
