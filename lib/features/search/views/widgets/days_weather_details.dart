import 'package:flutter/material.dart';
import 'package:weather_app/features/search/views/widgets/weather_details.dart';

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
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xff131313),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('Thu, 21 Oct'),
                ],
              ),
              WeatherDetails(),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.amber,
                  ),
                  Text('Mansoura,Egypt'),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
