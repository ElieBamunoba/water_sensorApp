class WeatherModel {
  String cityName;
  String weather;
  double temperature;
  int humidity;
  int pressure;
  double wind;
  String icon;

  WeatherModel({
    required this.pressure,
    required this.cityName,
    required this.weather,
    required this.temperature,
    required this.humidity,
    required this.wind,
    required this.icon,
  });

  //function to parse the JSON file into the model
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json["name"],
      weather: json["weather"][0]["description"],
      temperature: json["main"]["temp"],
      wind: json["wind"]["speed"],
      humidity: json["main"]["humidity"],
      pressure: json["main"]["pressure"],
      icon: json["weather"][0]["icon"],
    );
  }
}
