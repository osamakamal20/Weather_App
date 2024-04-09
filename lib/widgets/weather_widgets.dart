import 'package:flutter/material.dart';
import 'package:weather/data/weather_items.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;
  const WeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weather.current.toString() + "\u00B0",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Image(
            image: AssetImage(weather.image),
            width: 50,
            height: 50,
          ),
          SizedBox(height: 8),
          Text(
            weather.time,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
