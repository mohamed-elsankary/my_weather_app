import 'package:flutter/material.dart';
import 'package:weather_app/constant.dart';

import 'package:weather_app/features/search/views/widgets/text_field_Search.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(kBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFieldSearch(),
              ),
              Expanded(
                child: Text(
                  'Start Search for city',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
