// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherApp'),
      ),
    );
  }
}
