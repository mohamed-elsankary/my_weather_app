import 'package:flutter/material.dart';
import 'package:weather_app/features/search/views/widgets/max_min_weather.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MaxMinWeather(number: 35, weather: 'Max'),
            MaxMinWeather(number: 20, weather: 'Min'),
            Text(
              'Clear',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Image.asset(
          'image/icon.jpg',
          height: 50,
        ),
      ],
    );
  }
}
