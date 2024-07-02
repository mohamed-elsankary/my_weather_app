import 'package:flutter/material.dart';

class TextSearchDetails extends StatelessWidget {
  const TextSearchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'The next two days in ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          'Mansoura',
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
