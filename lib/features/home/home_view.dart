import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/constant.dart';
import 'package:weather_app/core/utils/widget/app_router.dart';

import 'package:weather_app/features/home/persentation/views/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Weather App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              iconSize: 30,
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
          ],
          backgroundColor: kBackgroundColor),
      body: const HomeViewBody(),
    );
  }
}
