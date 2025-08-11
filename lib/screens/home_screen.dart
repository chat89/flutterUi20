import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/weather_provider.dart';
import '../widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WeatherProvider>(context);
    final w = provider.weather;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Weather', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 20),
              if (w == null)
                const Center(child: CircularProgressIndicator()),
              if (w != null) ...[
                WeatherCard(weather: w),
                const SizedBox(height: 20),
                Text('Today', style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 18, fontWeight: FontWeight.w600)),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _smallInfo('Min', '${w.minTemp}°C'),
                    _smallInfo('Now', '${w.temperature}°C'),
                    _smallInfo('Max', '${w.maxTemp}°C'),
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  Widget _smallInfo(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(color: Colors.white70)),
        const SizedBox(height: 6),
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
