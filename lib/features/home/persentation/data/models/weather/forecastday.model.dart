import 'package:equatable/equatable.dart';

import 'astro.model.dart';
import 'day.model.dart';

class Forecastday extends Equatable {
  final String? date;
  final int? dateEpoch;
  final Day? day;
  final Astro? astro;

  const Forecastday({this.date, this.dateEpoch, this.day, this.astro});

  factory Forecastday.fromJson(Map<String, dynamic> json) => Forecastday(
        date: json['date'] as String?,
        dateEpoch: json['date_epoch'] as int?,
        day: json['day'] == null
            ? null
            : Day.fromJson(json['day'] as Map<String, dynamic>),
        astro: json['astro'] == null
            ? null
            : Astro.fromJson(json['astro'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'date': date,
        'date_epoch': dateEpoch,
        'day': day?.toJson(),
        'astro': astro?.toJson(),
      };

  @override
  List<Object?> get props => [date, dateEpoch, day, astro];
}
