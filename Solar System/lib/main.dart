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

      onGenerateRoute: (settings) {
        if (settings.name == "/") {
          return MaterialPageRoute(builder: (context) => Planets());
        }

        var uri = Uri.parse(settings.name ?? "/");
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == "details") {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(
            builder: (context) => PlanetsDetails(index: int.parse(id)),
          );
        }
        return MaterialPageRoute(builder: (context) => Planets());
      },
    );
  }
}
