import 'package:flutter/material.dart';

import 'package:weather_app/features/search/views/widgets/text_field_Search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search View',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.end,
        ),
        backgroundColor: const Color.fromARGB(255, 80, 125, 184),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 112, 167, 230),
              Color.fromARGB(255, 43, 96, 139),
              Color.fromARGB(255, 129, 147, 163),
            ],
          ),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextFieldSearch(),
          ),
        ),
      ),
    );
  }
}
