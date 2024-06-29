import 'package:flutter/material.dart';
import 'package:weather_app/features/home/persentation/views/home_view_body.dart';
import 'package:weather_app/features/home/persentation/views/widgets/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.blue,
      ),
      body: const HomeViewBody(),
    );
  }
}
