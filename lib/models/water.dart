class WaterModel {
  double moisture;
  WaterModel({
    required this.moisture,
  });
  //function to parse the JSON file into the model
  factory WaterModel.fromJson(Map<String, dynamic> json) {
    return WaterModel(
      moisture: json["moisture"],
    );
  }
}
