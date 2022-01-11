import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fa_2_bloc_library/bloc/weather_bloc.dart';
import 'package:fa_2_bloc_library/cubit/weather_cubit.dart';
import 'package:fa_2_bloc_library/data/weather_repository.dart';
import 'package:fa_2_bloc_library/pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}
