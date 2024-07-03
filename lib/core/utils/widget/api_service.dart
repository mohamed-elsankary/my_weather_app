import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl =
      'http://api.weatherapi.com/v1/marine.json?key=933b8e9ec7d54634b16100839241903&q=cairo&days=3';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> getWeather() async {
    final response = await _dio.get(_baseUrl);
    return response.data;
  }
}
