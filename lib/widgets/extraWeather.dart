import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/data/weather_items.dart';

class ExtraWeather extends StatelessWidget {
  final Weather temp;
  ExtraWeather(this.temp);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.wind,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(height: 8),
            Text(
              temp.wind.toString() + " Km/h",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 1.5),
            Text(
              "Wind",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Colors.white54,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.drop, color: Colors.white),
            SizedBox(height: 8),
            Text(
              temp.humidity.toString() + " %",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 1.5),
            Text(
              "Humidity",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Colors.white54,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.cloud_rain, color: Colors.white),
            SizedBox(height: 8),
            Text(
              temp.chanceRain.toString() + " %",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 1.5),
            Text(
              "Rain",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
