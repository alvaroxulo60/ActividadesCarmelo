import 'package:examen1/data/mock_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LonjaScreen extends StatefulWidget {
  const LonjaScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LonjaScreenState();
  }


}

class _LonjaScreenState extends State<LonjaScreen>{

  bool _cambiado = false;
  Color _color = Colors.white;
  Color _colorPar = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        title: Text("La Lonja", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => _cambiarEstado(), icon: Icon(Icons.warehouse_outlined, color: Colors.white,))
        ],
      ),
      body:
      ListView.separated(itemBuilder: (context, index) {
        return ListaLonja(captura: mockCapturas[index], index: index, color: _colorPar,);
      }, separatorBuilder: (context, index) {
        return Divider(height: 0,);
      }, itemCount: mockCapturas.length),
    );
  }


  void _cambiarEstado(){
    if(_cambiado == false) {
      setState(() {
        _cambiado = true;
        _color = Colors.grey;
        _colorPar = Colors.blueGrey[700]!;
      });
    }else{
      setState(() {
        _cambiado = false;
        _color = Colors.white;
        _colorPar = Colors.white;
      });
    }
  }

}


class ListaLonja extends StatelessWidget{

  Captura _captura;
  Color _color;
  int _index;

  ListaLonja({super.key, required this._captura, required this._color, required this._index});

  @override
  Widget build(BuildContext context) {
    TipoPescado _pescado = obtenerPescadoPorId(_captura.tipoPescadoId);
    Barco _barco = obtenerBarcoPorId(_captura.barcoId);
    return ListTile(
      tileColor: _index % 2 == 0 ? _color : Colors.white,
      leading: Image.asset(_pescado.imagenUrl,width: 40,height: 40,),
      title: Text(_pescado.nombre),
      subtitle: Row(
        children: [
          Icon(Icons.directions_boat),
          Text(_barco.nombre)
        ],
      ),
      trailing: IconButton(onPressed: () {
        Navigator.pushNamed(context, "details/${_captura.id}");
      }, icon: Icon(Icons.arrow_forward_ios)),
    );
  }
}