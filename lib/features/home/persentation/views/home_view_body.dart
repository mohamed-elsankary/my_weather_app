import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 128, 169, 216),
            Color(0xFF90CAF9),
            Color(0xFF1E88E5),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          "Search and know today's weather 🥶",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
