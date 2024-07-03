part of 'weather_service_cubit.dart';

sealed class WeatherServiceState {}

final class WeatherServiceInitial extends WeatherServiceState {}

final class WeatherServiceSuccess extends WeatherServiceState {
  final List<Astro> astroWeatherModel;

  WeatherServiceSuccess(this.astroWeatherModel);
}

final class WeatherServiceFailuer extends WeatherServiceState {
  final String errorMassage;

  WeatherServiceFailuer(this.errorMassage);
}

final class WeatherServiceLoading extends WeatherServiceState {}
