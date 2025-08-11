import 'dart:async';
import '../models/weather.dart';

class MockWeatherService {
  static Future<Weather> getMockWeather() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Weather(
      city: 'Dhaka',
      condition: 'Sunny',
      temperature: 31.5,
      minTemp: 28.0,
      maxTemp: 33.0,
    );
  }
}
