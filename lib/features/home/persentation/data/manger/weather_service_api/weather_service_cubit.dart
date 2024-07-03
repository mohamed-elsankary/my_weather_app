import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/widget/api_service.dart';
import 'package:weather_app/features/home/persentation/data/models/weather_model.dart';

part 'weather_service_state.dart';

class WeatherServiceCubit extends Cubit<WeatherServiceState> {
  final ApiService apiService;
  WeatherServiceCubit(this.apiService) : super(WeatherServiceInitial());
  Future<void> fetchWeather({required String cityName}) async {
    emit(WeatherServiceLoading());
    try {
      final data = await apiService.getWeather(cityName: cityName);
      emit(
        WeatherServiceSuccess(data),
      );
    } catch (e) {
      emit(
        WeatherServiceFailuer(e.toString()),
      );
    }
  }
}
