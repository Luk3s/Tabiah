import 'package:flutter/material.dart';
import 'package:tabiah/core/app_config.dart';
import 'package:tabiah/core/app_flavor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.config, Key? key}) : super(key: key);

  final AppConfig config;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.config.flavor.map(
            prod: () => 'tabiah',
            dev: () => '[DEV] tabiah',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hit counter:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
