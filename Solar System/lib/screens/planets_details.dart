import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/data/planet_data.dart';

class PlanetsDetails extends StatelessWidget{
  int _index;
  
  PlanetsDetails({super.key, required this._index});
  @override
  Widget build(BuildContext context) {
    
    PlanetData p = PlanetData.planets[_index];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: Text("Planets Details", style: TextStyle(color: Colors.white)),
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
      ),
      body: Center(child: Image.asset(p.image),),
    );
  }
}