import 'package:flutter/material.dart';
import 'package:weather/data/weather_items.dart';
import 'package:weather/screens/DetailPage/detail_page.dart';
import 'package:weather/widgets/weather_widgets.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailWeatherForecast(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "7 days",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeatherWidget(weather: todayWeather[0]),
                  WeatherWidget(weather: todayWeather[1]),
                  WeatherWidget(weather: todayWeather[2]),
                  WeatherWidget(weather: todayWeather[3]),
                  WeatherWidget(weather: todayWeather[4]),
                  WeatherWidget(weather: todayWeather[5]),
                  WeatherWidget(weather: todayWeather[6]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
