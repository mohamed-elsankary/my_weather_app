import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constant.dart';
import 'package:weather_app/core/utils/widget/api_service.dart';
import 'package:weather_app/features/home/persentation/data/manger/weather_service_api/weather_service_cubit.dart';

import 'package:weather_app/features/search/views/text_field_Search_view.dart';
import 'package:weather_app/features/search/views/widgets/days_weather_details.dart';
import 'package:weather_app/features/search/views/widgets/text_search_details.dart';
import 'package:weather_app/features/search/views/widgets/today_weather.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherServiceCubit(ApiService(Dio())),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(kBackground),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                const TextFieldSearchView(),
                const SizedBox(height: 25),
                Expanded(child:
                    BlocBuilder<WeatherServiceCubit, WeatherServiceState>(
                  builder: (context, state) {
                    if (state is WeatherServiceSuccess) {
                      return ListView(
                        children: [
                          TodeySearchDetails(
                            weatherModel: state.weatherModel,
                          ),
                          const SizedBox(height: 135),
                          TextSearchDetails(
                            weatherModel: state.weatherModel,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ListViewContainer(
                            weatherModel: state.weatherModel,
                          ),
                          const SizedBox(height: 30),
                        ],
                      );
                    }
                    if (state is WeatherServiceLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    if (state is WeatherServiceFailuer) {
                      return Text(
                        state.errorMassage,
                        style: const TextStyle(color: Colors.red),
                      );
                    }

                    return const Center(
                      child: Text(
                        'Start Search For City',
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
