import 'package:flutter/material.dart';

class MinMaxTemp extends StatelessWidget {
  const MinMaxTemp({super.key, required this.weather, required this.number});

  final String weather;
  final num number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$weather :',
          style:
              const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
        ),
        Text(
          ' $number ',
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const Text(
          '°c ',
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
