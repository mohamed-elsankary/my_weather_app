import 'package:dio/dio.dart';
import 'package:weather_app/features/home/persentation/data/models/weather_model.dart';

class ApiService {
  final String _baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '933b8e9ec7d54634b16100839241903';
  final Dio dio;
  ApiService(this.dio);

  Future<WeatherModel> getWeather({required String cityName}) async {
    final response =
        await dio.get('$_baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
