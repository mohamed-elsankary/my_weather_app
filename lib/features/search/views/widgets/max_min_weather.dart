import 'package:flutter/material.dart';

class MaxMinWeather extends StatelessWidget {
  const MaxMinWeather({super.key, required this.number, required this.weather});
  final int number;
  final String weather;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$weather :',
          style: const TextStyle(color: Colors.orange),
        ),
        Text(
          ' $number ',
          style: const TextStyle(fontSize: 17),
        ),
        const Text(
          '°c ',
          style: TextStyle(color: Colors.orange),
        ),
      ],
    );
  }
}
