import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';

  WeatherServices({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=c213e817f71a4e9c96f134700233009&q=$cityName&days=3');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errormessage = e.response?.data['error']['message'] ??
          'oops there are an error , try later !';

      throw Exception(errormessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there are an error , try later !');
    }
  }
}
