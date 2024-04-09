import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/data/weather_items.dart';
import 'package:weather/widgets/custom_icon.dart';
import 'package:weather/widgets/extraWeather.dart';

class TomorrowWeatherForecast extends StatelessWidget {
  const TomorrowWeatherForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return GlowContainer(
      color: tertiaryColor,
      glowColor: tertiaryColor,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(40),
        bottomLeft: Radius.circular(40),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, right: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIcon(
                  iconData: Icons.arrow_back_ios,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.white),
                    Text(
                      " 7 days",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3.0,
                  height: MediaQuery.of(context).size.height / 3.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(tomorrowTemp.image),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Tomorrow",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        height: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 115,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GlowText(
                            tomorrowTemp.max.toString() + "\u00B0",
                            style: TextStyle(
                              fontSize: 96,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "/" + tomorrowTemp.min.toString() + "\u00B0",
                            style: TextStyle(
                              color: Colors.black54.withOpacity(.3),
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 08),
                    Text(
                      " " + tomorrowTemp.name,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                Divider(color: Colors.white),
                SizedBox(height: 10),
                ExtraWeather(tomorrowTemp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
