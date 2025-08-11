import 'package:flutter/foundation.dart';
import '../models/weather.dart';
import '../services/mock_weather_service.dart';

class WeatherProvider extends ChangeNotifier {
  Weather? weather;

  Future<void> loadMock() async {
    weather = await MockWeatherService.getMockWeather();
    notifyListeners();
  }
}
