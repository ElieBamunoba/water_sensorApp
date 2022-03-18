class Weather {
  String cityName;
  String weather;
  double temperature;
  double min;
  double max;
  String icon;

  Weather({
    required this.cityName,
    required this.weather,
    required this.temperature,
    required this.min,
    required this.max,
    required this.icon,
  });

  //function to parse the JSON file into the model
  factory Weather.fromJson(Map<String, dynamic> json) {
    final cityName = json["name"];
    final weather = json["weather"][0][
        "description"]; // use [0] to find the first element of the array in the json file
    final temperature = json["main"]["temp"];
    final min = json["main"]["temp_min"];
    final max = json["main"]["temp_max"];
    final icon = json["weather"][0]["icon"];
    return Weather(
      cityName: cityName,
      weather: weather,
      temperature: temperature,
      max: max,
      min: min,
      icon: icon,
    );
  }
}

  

// {
//     "coord": {
//         "lon": 37.0497,
//         "lat": -1.4395
//     },
//     "weather": [
//         {
//             "description": "scattered clouds",
//             "icon": "03d"
//         }
//     ],
//     "main": {
//         "temp": 303.25,
//         "temp_min": 303.25,
//         "temp_max": 303.55,
//         "pressure": 1015,
//         "humidity": 30
//     },
//     "visibility": 10000,
//     "wind": {
//         "speed": 6.17,
//         "deg": 90,
//         "gust": 11.83
//     },
//     "clouds": {
//         "all": 40
//     },
//     "dt": 1647524972,
//     "sys": {
//         "type": 1,
//         "id": 2543,
//         "country": "KE",
//         "sunrise": 1647488208,
//         "sunset": 1647531823
//     },
//     "name": "Athi River",

// }
