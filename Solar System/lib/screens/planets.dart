import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/data/planet_data.dart';
import 'package:solar_system/screens/planets_details.dart';

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
          PlanetData p = PlanetData.planets[index];
          return PlanetTile(
            nombre: p.nombre,
            image: p.image,
            desc: p.distancia,
            index: index,
          );
        },
        itemCount: PlanetData.planets.length,
        separatorBuilder: (context, index) {
          return Divider(height: 0);
        },
      ),
    );
  }
}

class PlanetTile extends StatelessWidget {
  String _nombre;
  String _image;
  String _desc;
  int _index;

  PlanetTile({
    super.key,
    required this._nombre,
    required this._image,
    required this._desc,
    required this._index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(_image),
      title: Text(_nombre),
      subtitle: Text(_desc),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Navigator.pushNamed(context, "details/$_index");
      },
    );
  }
}
