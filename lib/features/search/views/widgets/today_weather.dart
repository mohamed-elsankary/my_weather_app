import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/features/home/persentation/data/models/weather_model.dart';

class TodeySearchDetails extends StatelessWidget {
  const TodeySearchDetails({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xff131313),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Today',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                DateFormat("d MMM, yyyy")
                    .format(DateTime.parse(weatherModel.current!.lastUpdated!)),
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${weatherModel.current!.tempC!.toInt()}',
                        style: const TextStyle(fontSize: 38),
                      ),
                      const Text(
                        ' °C ',
                        style: TextStyle(color: Colors.amber, fontSize: 25),
                      ),
                    ],
                  ),
                  Text(
                    '${weatherModel.current!.condition!.text}',
                    style: const TextStyle(color: Colors.grey, fontSize: 22),
                  ),
                ],
              ),
              Image.network(
                "https:${weatherModel.current!.condition!.icon}",
                height: 120,
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.amber,
              ),
              Text(
                '${weatherModel.location!.name}, ${weatherModel.location!.region}, ${weatherModel.location!.country}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
