import 'package:examen1/data/mock_data.dart';
import 'package:examen1/screen/details_screen.dart';
import 'package:examen1/screen/lonja_screen.dart';
import 'package:flutter/material.dart';

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
          return MaterialPageRoute(builder: (context) => LonjaScreen());
        }

        var uri = Uri.parse(settings.name ?? "/");
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == "details") {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(
            builder: (context) => DetailsScreen(
              captura: mockCapturas.firstWhere((b) => b.id == id),
            ),
          );
        }
        return MaterialPageRoute(builder: (context) => LonjaScreen(),);
      },
    );
  }
}
