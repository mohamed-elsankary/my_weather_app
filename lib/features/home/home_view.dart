import 'package:flutter/material.dart';

import 'package:weather_app/features/home/persentation/views/home_view_body.dart';
import 'package:weather_app/features/search/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchView(),
                ),
              );
            },
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 66, 108, 187),
      ),
      body: const HomeViewBody(),
    );
  }
}
