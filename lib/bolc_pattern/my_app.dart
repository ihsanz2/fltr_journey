import 'package:flutter/material.dart';
import 'bloc_pattern.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "bloc pattern",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocPattern(),
    );
  }
}
