import 'dart:math';

enum WeatherCondition { sunny, cloudy, rainy, stormy }

class WeatherRepository {
  List<WeatherData> weatherDataList = [
    WeatherData("München", 8.0, WeatherCondition.sunny),
    WeatherData("Hamburg", 6.0, WeatherCondition.cloudy),
    WeatherData("Berlin", 5.0, WeatherCondition.rainy),
    WeatherData("Saarbrücken", 7.0, WeatherCondition.stormy)
  ];
  WeatherData getRandomWeatherData() {
    Random random = Random();
    int randomIndex = random.nextInt(weatherDataList.length);
    return weatherDataList[randomIndex];
  }
}

class WeatherData {
  String city;
  double temperature;
  WeatherCondition weatherCondition;

  WeatherData(this.city, this.temperature, this.weatherCondition);
}
