import 'package:flutter/material.dart';
import 'package:weather_app/features/search/views/widgets/max_min_weather.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xff131313),
          ),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Thu, 21 Sep',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MaxMinWeather(
                  weather: 'Max',
                  number: 35,
                ),
                MaxMinWeather(
                  weather: 'Min',
                  number: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
