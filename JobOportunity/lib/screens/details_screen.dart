import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_oportunity/data/details.dart';

class DetailsScreen extends StatelessWidget{
  Details _details;
  DetailsScreen({super.key, required this._details});

  @override
  Widget build(BuildContext context) {

    String buildExperienceText({
      required bool hasFlutter,
      required bool hasAndroid,
      required bool hasIos, // Opcional si también lo usas como en la imagen
    }) {
      final skills = [
        if (hasFlutter) 'Flutter',
        if (hasAndroid) 'Android',
        if (hasIos) 'iOS',
      ];

      if (skills.isEmpty) {
        return 'No experience specified'; // O devolver cadena vacía ''
      }

      if (skills.length == 1) {
        return 'Experience in ${skills.first}';
      }

      // Une todos con coma excepto el último, que lleva "and"
      final lastSkill = skills.removeLast();
      return 'Experience in ${skills.join(', ')} and $lastSkill';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        centerTitle: true,
        title: Text(
          "Sharing oportunities",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 48,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
            Text(_details.valueTextField,style: TextStyle(fontSize: 16),),
            Text(_details.remote ? "100% Remote": "0% Remote",style: TextStyle(fontSize: 16)),
            Text(buildExperienceText(hasFlutter: _details.flutter, hasAndroid: _details.android, hasIos: _details.ios),style: TextStyle(fontSize: 16)),
            Text("Salary from ${_details.rangeValues.start.round()}K to ${_details.rangeValues.end.round()}K",style: TextStyle(fontSize: 16))
          ],
        ),
      ),
    );
  }
}