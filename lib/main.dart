import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:weather_app/core/utils/widget/app_router.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.tekturTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
    );
  }
}
