import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/data/planets_data.dart';

class Planets extends StatelessWidget{
  const Planets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        PlanetsData p = PlanetsData.planets[index];
        return PlanetTile(nombre: p.nombre, image: p.image);
      },itemCount: PlanetsData.planets.length,),
    );
  }
}



class PlanetTile extends StatelessWidget{
  String _nombre;
  String _image;
  PlanetTile({super.key,required this._nombre,required this._image});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(_image),
      title: Text(_nombre),
    );
  }
  
}