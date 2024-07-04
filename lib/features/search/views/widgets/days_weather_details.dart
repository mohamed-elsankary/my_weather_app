import 'package:flutter/material.dart';
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 20),
                    ),
                    // Text(
                    //   DateFormat("E, d MMM")
                    //       .format(DateTime.parse()),
                    //   style: const TextStyle(fontSize: 16),
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MinMaxTemp(weather: 'Max', number: 12),
                        MinMaxTemp(weather: 'Min', number: 23),
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
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.amber,
                    ),
                    Text(
                      '${weatherModel.location!.name}, ${weatherModel.location!.region}, ${weatherModel.location!.country}',
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
