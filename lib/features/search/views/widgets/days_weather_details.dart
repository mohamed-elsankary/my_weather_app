import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/features/home/persentation/data/models/weather_model.dart';
import 'package:weather_app/features/search/views/widgets/min_max_temp.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    final d1 = weatherModel.forecast!.forecastday![1].day!;
    return SizedBox(
      height: 230,
      child: ListView.builder(
        itemCount: weatherModel.forecast!.forecastday!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat("E, d MMM").format(DateTime.parse(
                          weatherModel.forecast!.forecastday![1].date!)),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MinMaxTemp(
                            weather: 'Max', number: d1.maxtempC!.toInt()),
                        MinMaxTemp(
                            weather: 'Min', number: d1.mintempC!.toInt()),
                        Text(
                          '${weatherModel.forecast!.forecastday![1].day!.condition!.text}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Image.network(
                      'https:${weatherModel.forecast!.forecastday![1].day!.condition!.icon}',
                      height: 50,
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
          ),
        ),
      ),
    );
  }
}
