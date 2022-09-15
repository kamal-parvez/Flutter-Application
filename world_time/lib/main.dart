import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/location.dart';
import 'package:world_time/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/': (context) => Location(),
      '/': (context) =>
    },
  ));
}

