class WeatherModel {
  final String CityName;
  final String date;
  final String Image;
  final String temp;
  final String MinTemp;
  final String MaxTemp;
  final String WeatherCondition;

  WeatherModel(
      {required this.CityName,
      required this.date,
      required this.Image,
      required this.temp,
      required this.MinTemp,
      required this.MaxTemp,
      required this.WeatherCondition});
  factory WeatherModel.fromJson(Json) {
    return WeatherModel(
      Image: Json['forecast']['forecastday'][0]['day']['condition']['icon'],
        CityName: Json['location']['name'],
        date: Json['current']['last_updated'],
        temp: Json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        MinTemp: Json['forecast']['forecastday'][0]['day']['mintemp_c'],
        MaxTemp: Json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        WeatherCondition: Json['forecast']['forecastday'][0]['day']['condition']['text']);
  }
}
