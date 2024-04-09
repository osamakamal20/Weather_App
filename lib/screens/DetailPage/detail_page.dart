import 'package:flutter/material.dart';
import 'package:weather/components/sevendays_forecast.dart';
import 'package:weather/components/tomorrow.weather.dart';
import 'package:weather/constants/constants.dart';

class DetailWeatherForecast extends StatelessWidget {
  const DetailWeatherForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          TomorrowWeatherForecast(),
          SizedBox(height: 30),
          SevenDaysForeCastWeather(),
        ],
      ),
    );
  }
}
