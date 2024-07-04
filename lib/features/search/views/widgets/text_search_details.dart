import 'package:flutter/material.dart';
import 'package:weather_app/features/home/persentation/data/models/weather_model.dart';

class TextSearchDetails extends StatelessWidget {
  const TextSearchDetails({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'The next Three days in ',
        ),
        Text(
          weatherModel.location!.name!,
          style: const TextStyle(
              color: Colors.amber, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
