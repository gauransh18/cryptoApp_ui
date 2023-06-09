import '../assets/screenOne.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        routeOne: (context) => const ScreenOne(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Crypto App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
