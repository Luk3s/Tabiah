import 'package:flutter/material.dart';
import 'package:tabiah/core/app_config.dart';
import 'package:tabiah/core/app_flavor.dart';
import 'package:tabiah/screens/home_screen.dart';

Widget buildApp({required AppConfig config}) {
  // Load everything needed for launching the app here

  return MyApp(config: config);
}

class MyApp extends StatelessWidget {
  const MyApp({
    required this.config,
    Key? key,
  }) : super(key: key);

  final AppConfig config;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: config.flavor.map(
          prod: () => Colors.purple,
          dev: () => Colors.deepOrange,
        ),
      ),
      home: HomeScreen(config: config),
    );
  }
}
