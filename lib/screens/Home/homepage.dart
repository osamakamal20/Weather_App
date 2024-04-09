import 'package:flutter/material.dart';
import 'package:weather/components/current_weather.dart';
import 'package:weather/components/today_weather.dart';
import 'package:weather/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurrentWeather(),
            TodayWeather(),
          ],
        ),
      ),
    );
  }
}
