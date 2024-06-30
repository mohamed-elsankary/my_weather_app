import 'package:flutter/material.dart';
import 'package:weather_app/constant.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(kImageApp),
        ),
      ),
    );
  }
}
