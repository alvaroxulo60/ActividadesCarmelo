import 'package:flutter/material.dart';
import 'package:job_oportunity/data/details.dart';
import 'package:job_oportunity/screens/details_screen.dart';
import 'package:job_oportunity/screens/info_screen.dart';
import 'package:job_oportunity/screens/log_in_screen.dart';

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
        if(settings.name == "/"){
          return MaterialPageRoute(builder: (context) => LogInScreen(),);
        }

        if(settings.name == "info"){
          return MaterialPageRoute(builder: (context) => InfoScreen(),);
        }

        if(settings.name == "details"){
          final details = settings.arguments as Details;
          return MaterialPageRoute(builder: (context) => DetailsScreen(details: details),);
        }

        return MaterialPageRoute(builder:  (context) => LogInScreen(),);
      },
    );
  }
}

