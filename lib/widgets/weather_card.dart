import 'package:flutter/material.dart';
import '../models/weather.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(weather.city, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Text(weather.condition, style: TextStyle(color: Colors.white.withOpacity(0.9))),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${weather.temperature}°C', style: const TextStyle(color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold)),
              Column(
                children: [
                  Icon(Icons.wb_sunny, size: 48, color: Colors.yellowAccent[700]),
                  const SizedBox(height: 6),
                  Text('Feels like ${weather.temperature.toStringAsFixed(0)}°', style: const TextStyle(color: Colors.white70))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
