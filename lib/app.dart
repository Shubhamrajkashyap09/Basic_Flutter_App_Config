import 'package:flutter/material.dart';
import 'package:notification_test_app/constants/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ${appFlavor.toUpperCase()}',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flavor: $appFlavor'),
        ),
        body: Center(
          child: Text(
            'Base URL:\n${Constants.baseUrl}',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
