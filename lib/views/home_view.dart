import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return SearchScreen();
              })));
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, State) {
          if (State is WeatherInitialState) {
            return noWeatherBody();
          } else if (State is WeatherLoadedState) {
            return WeatherInfoBody();
          } else {
            return Text('oops there are an error');
          }
        },
      ),
    );
  }
}


//create states >>بتمثل الاوضاع بتاعت الشاشه >>three states
//create cubit 
//create function 
//provide cubit 
//integrate cubit >> التفاعل مع ui
//trigger cubit 
