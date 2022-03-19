class WeatherModel {
  String cityName;
  String weather;
  double temperature;
  double min;
  double max;
  String icon;

  WeatherModel({
    required this.cityName,
    required this.weather,
    required this.temperature,
    required this.min,
    required this.max,
    required this.icon,
  });

  //function to parse the JSON file into the model
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json["name"],
      weather: json["weather"][0]["description"],
      temperature: json["main"]["temp"],
      max: json["main"]["temp_max"],
      min: json["main"]["temp_min"],
      icon: json["weather"][0]["icon"],
    );
  }
}
