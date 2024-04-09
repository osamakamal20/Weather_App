class Weather {
  final int max;
  final int min;
  final int current;
  final String name;
  final String day;
  final int wind;
  final int humidity;
  final int chanceRain;
  final String image;
  final String time;
  final String location;

  Weather(
      {this.max = 0,
      this.min = 0,
      this.name = "",
      this.day = "",
      this.wind = 0,
      this.humidity = 0,
      this.chanceRain = 0,
      this.image = "",
      this.current = 0,
      this.time = "",
      this.location = ""});
}

// API KEY USED

List<Weather> todayWeather = [
  Weather(current: 26, image: "assets/images/clear.png", time: "10:00"),
  Weather(current: 26, image: "assets/images/sunny.png", time: "11:00"),
  Weather(current: 26, image: "assets/images/clear.png", time: "12:00"),
  Weather(current: 25, image: "assets/images/sunny.png", time: "01:00"),
  Weather(current: 25, image: "assets/images/clear.png", time: "02:00"),
  Weather(current: 24, image: "assets/images/sunny.png", time: "03:00"),
  Weather(current: 24, image: "assets/images/clear.png", time: "04:00"),
];

Weather currentTemp = Weather(
    current: 28,
    image: "assets/images/sunny.png",
    name: "Sunny",
    day: "Monday, 08 April",
    wind: 13,
    humidity: 64,
    chanceRain: 8,
    location: "Karachi");

Weather tomorrowTemp = Weather(
  max: 36,
  min: 23,
  image: "assets/images/sunny.png",
  name: "Sunny",
  wind: 15,
  humidity: 65,
  chanceRain: 10,
);

//get appid from http://openweathermap.org
String appId = "14ff0b16859648a68f691602242303";
//https://api.weatherapi.com/v1/forecast.json?key=14ff0b16859648a68f691602242303&days=7&q=karachi

List<Weather> sevenDay = [
  Weather(
      max: 33,
      min: 23,
      image: "assets/images/cloudy.png",
      day: "Wed",
      name: "Cloudy"),
  Weather(
      max: 33,
      min: 24,
      image: "assets/images/cloudy.png",
      day: "Thu",
      name: "Cloudy"),
  Weather(
      max: 33,
      min: 26,
      image: "assets/images/clear.png",
      day: "Fri",
      name: "Clear"),
  Weather(
      max: 31,
      min: 25,
      image: "assets/images/clear.png",
      day: "Sat",
      name: "Clear"),
  Weather(
      max: 31,
      min: 25,
      image: "assets/images/cloudy.png",
      day: "Sun",
      name: "Cloudy"),
  Weather(
      max: 31,
      min: 25,
      image: "assets/images/sunny.png",
      day: "Mon",
      name: "Sunny"),
  Weather(
      max: 33,
      min: 25,
      image: "assets/images/sunny.png",
      day: "Tue",
      name: "Sunny")
];
