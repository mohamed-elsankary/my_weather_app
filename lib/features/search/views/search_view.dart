import 'package:flutter/material.dart';
import 'package:weather_app/constant.dart';

import 'package:weather_app/features/search/views/widgets/text_field_Search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 200,
          child: Text(
            'Search View',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.end,
          ),
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextFieldSearch(),
        ),
      ),
    );
  }
}
