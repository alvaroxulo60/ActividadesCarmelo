import 'package:flutter/material.dart';
import 'package:solar_system/screens/planets.dart';
import 'package:solar_system/screens/planets_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",

      routes: {
        "/": (context) => Planets(),
        "/details": (context)  {
          final args = ModalRoute.of(context)?.settings.arguments;
          final index = args is int ? args : 0; //Por defecto 0 por si algo sale mal
          return PlanetsDetails(index: index);
        }
      },

    );
  }
}

