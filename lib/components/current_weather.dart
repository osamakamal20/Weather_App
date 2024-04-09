import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/data/weather_items.dart';
import 'package:weather/widgets/custom_icon.dart';
import 'package:weather/widgets/extraWeather.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return GlowContainer(
      height: MediaQuery.of(context).size.height - 75,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.only(top: 30, left: 15, right: 15),
      glowColor: tertiaryColor.withOpacity(0.5),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      color: tertiaryColor,
      spreadRadius: 5,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIcon(
                iconData: CupertinoIcons.square_grid_2x2,
                onPressed: () {},
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.map_fill, color: Colors.white),
                  Text(
                    " " + currentTemp.location,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Icon(Icons.more_vert, color: Colors.white)
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 0.2, color: Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Updating",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 430,
            child: Stack(
              children: [
                Image(
                  image: AssetImage(currentTemp.image),
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                      child: Column(
                    children: [
                      GlowText(
                        currentTemp.current.toString() + "\u00B0",
                        style: TextStyle(
                          fontSize: 128,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        currentTemp.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        currentTemp.day,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
          Divider(color: Colors.white),
          SizedBox(height: 5),
          ExtraWeather(currentTemp)
        ],
      ),
    );
  }
}
