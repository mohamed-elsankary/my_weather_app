import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/features/home/persentation/data/models/weather_model.dart';
import 'package:weather_app/features/search/views/widgets/temp_weather.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        itemCount: weatherModel.forecast!.forecastday!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final day = weatherModel.forecast!.forecastday![index];

          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 320,
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
                        'Date',
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      Text(
                        DateFormat("E, d MMM")
                            .format(DateTime.parse(day.date!)),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TempWeather(day: day, weatherModel: weatherModel),
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
            ),
          );
        },
      ),
    );
  }
}
