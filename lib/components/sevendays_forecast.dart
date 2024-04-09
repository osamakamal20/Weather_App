import 'package:flutter/material.dart';
import 'package:weather/data/weather_items.dart';

class SevenDaysForeCastWeather extends StatelessWidget {
  const SevenDaysForeCastWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: sevenDay.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sevenDay[index].day,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 135,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(sevenDay[index].image),
                        width: 40,
                      ),
                      SizedBox(width: 15),
                      Text(
                        sevenDay[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      " " + sevenDay[index].max.toString() + "\u00B0",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "/",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      " " + sevenDay[index].min.toString() + "\u00B0",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
