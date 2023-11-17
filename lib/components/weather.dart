import 'package:flutter/material.dart';
import 'package:myapp/models/weather_models.dart';
import 'package:myapp/services/weather_service.dart';

class WeatherInHomePage extends StatefulWidget {
  const WeatherInHomePage({super.key});

  @override
  State<WeatherInHomePage> createState() => _WeatherInHomePageState();
}

class _WeatherInHomePageState extends State<WeatherInHomePage> {

  final _weatherService = WeatherService('d132c4415720d40c4cbc83ef63dda24b');
  Weather? _weather;
  
  _fetchWeather() async {
    String cityName = await _weatherService.getCurrentCity();

    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }

    catch(e){
      print(e);
    }
  }

  @override
  void initState(){
    super.initState();

    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) { 
        return Container(
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50.0)

            )
          ),
          child: Center(
            child: Column(
              children: [
                Text(_weather?.cityName ?? "loading..."),
                const SizedBox(height: 20,),
                Text("${_weather?.temperature.round()}C")
              ],
            ),
          ),
        );
      },
    );
  }
}