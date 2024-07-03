import 'package:bloc/bloc.dart';
import 'package:weather_app/features/home/persentation/data/models/weather/astro.model.dart';
part 'weather_service_state.dart';

class WeatherServiceCubit extends Cubit<WeatherServiceState> {
  WeatherServiceCubit() : super(WeatherServiceInitial());
}
