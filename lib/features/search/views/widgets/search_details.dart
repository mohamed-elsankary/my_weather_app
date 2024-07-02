import 'package:flutter/material.dart';
import 'package:weather_app/constant.dart';
import 'package:weather_app/features/search/views/widgets/list_view_container.dart';
import 'package:weather_app/features/search/views/text_field_Search_view.dart';
import 'package:weather_app/features/search/views/widgets/text_search_details.dart';
import 'package:weather_app/features/search/views/widgets/todey_search_details.dart';

class SearchDetails extends StatelessWidget {
  const SearchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(kBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: const Column(
            children: [
              TextFieldSearchView(),
              SizedBox(height: 25),
              Expanded(
                child: Column(
                  children: [
                    TodeySearchDetails(),
                    SizedBox(
                      height: 90,
                    ),
                    TextSearchDetails(),
                    SizedBox(
                      height: 30,
                    ),
                    ListViewContainer(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
