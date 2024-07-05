import 'package:flutter/material.dart';
import 'package:weather_app/features/home/persentation/data/models/weather_model.dart';
import 'package:weather_app/features/search/views/widgets/min_max_temp.dart';

class TempWeather extends StatelessWidget {
  const TempWeather({
    super.key,
    required this.day,
    required this.weatherModel,
  });

  final Forecastday day;
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MinMaxTemp(weather: 'Max', number: day.day!.maxtempC!.toInt()),
            MinMaxTemp(weather: 'Min', number: day.day!.mintempC!.toInt()),
            Text(
              '${weatherModel.forecast!.forecastday![1].day!.condition!.text}',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Image.network(
          'https:${weatherModel.forecast!.forecastday![1].day!.condition!.icon}',
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}
