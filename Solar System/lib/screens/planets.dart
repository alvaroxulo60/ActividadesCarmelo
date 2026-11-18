import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/data/planets_data.dart';

class Planets extends StatelessWidget {
  const Planets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: Text("Solar System", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          PlanetsData p = PlanetsData.planets[index];
          return PlanetTile(nombre: p.nombre, image: p.image, desc: p.desc);
        },
        itemCount: PlanetsData.planets.length,
        separatorBuilder: (context, index) {
          return Divider(height: 0,);
        },
      ),
    );
  }
}

class PlanetTile extends StatelessWidget {
  String _nombre;
  String _image;
  String _desc;

  PlanetTile({super.key, required this._nombre, required this._image,required this._desc});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(_image),
      title: Text(_nombre),
      subtitle: Text(_desc),
      trailing: Icon(Icons.keyboard_arrow_right),);
  }
}
