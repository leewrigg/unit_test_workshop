class Weather {
  final String condition;
  final double temp;

  bool get isGoodWeather =>
      condition.toLowerCase().contains("sun") ||
      condition.toLowerCase().contains("clear");

  Weather({
    required this.condition,
    required this.temp,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      condition: json['current']['condition']['text'].toString().toLowerCase(),
      temp: json['current']['temp_c'],
    );
  }

  @override
  String toString() {
    return "temp: $temp, condition: $condition, isGoodWeather: $isGoodWeather";
  }
}
