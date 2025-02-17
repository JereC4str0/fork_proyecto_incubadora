import 'dart:convert';

Actual actualFromJson(String str) => Actual.fromJson(json.decode(str));

String actualToJson(Actual data) => json.encode(data.toJson());

class Actual {
  bool rotation;
  String wifiStatus;
  double aHumidity;
  double aTemperature;

  Actual({
    required this.rotation,
    required this.wifiStatus,
    required this.aHumidity,
    required this.aTemperature,
  });

  factory Actual.fromJson(Map<String, dynamic> json) {
    return Actual(
      rotation: json["rotation"],
      wifiStatus: json["wifi_status"],
      aHumidity: double.parse(json["a_humidity"]),
      aTemperature: double.parse(json["a_temperature"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "rotation": rotation,
        "wifi_status": wifiStatus,
        "a_humidity": aHumidity.toString(),
        "a_temperature": aTemperature.toString(),
      };
}
