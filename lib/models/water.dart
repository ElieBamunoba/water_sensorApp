class Water {
  String watering;
  Water({
    required this.watering,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["f_name"] = watering;
    return data;
  }
}
