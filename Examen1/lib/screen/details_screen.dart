import 'package:examen1/data/mock_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  Captura _captura;

  DetailsScreen({super.key, required this._captura});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text("Detalle Captura", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            _FirstCard(captura: _captura),
            SizedBox(height: 20),
            _SecondCard(captura: _captura),
            SizedBox(height: 20),
            _ThirdCard(captura: _captura),
          ],
        ),
      ),
    );
  }
}

class _FirstCard extends StatelessWidget {
  Captura _captura;

  _FirstCard({super.key, required this._captura});

  @override
  Widget build(BuildContext context) {
    TipoPescado _pescado = obtenerPescadoPorId(_captura.tipoPescadoId);
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: .spaceEvenly,
            crossAxisAlignment: .start,
            children: [
              Text(_captura.calidad, textAlign: .left),
              Text(_pescado.nombre),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Text("${_captura.precioPorKg}€/kg", style: TextStyle(fontWeight: .bold),),
          ),
        ],
      ),
    );
  }
}

class _SecondCard extends StatelessWidget {
  Captura _captura;

  _SecondCard({super.key, required this._captura});

  @override
  Widget build(BuildContext context) {
    Barco _barco = obtenerBarcoPorId(_captura.barcoId);
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: .spaceAround,
        children: [
          Row(
            children: [
              SizedBox(width: 19),
              Icon(Icons.directions_boat),
              Text("Datos del barco", style: TextStyle(fontWeight: .bold),),
            ],
          ),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [Text(_barco.nombre), Text(_captura.horaDesembarque)],
          ),
          Center(child: Text(_barco.patron)),
        ],
      ),
    );
  }
}

class _ThirdCard extends StatelessWidget {
  Captura _captura;

  _ThirdCard({super.key, required this._captura});

  @override
  Widget build(BuildContext context) {
    TipoPescado _pescado = obtenerPescadoPorId(_captura.tipoPescadoId);
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: .start,

        children: [
          Text("Descripción", style: TextStyle(fontWeight: .bold, decoration: .underline),),
          SizedBox(height: 5),
          Text(_pescado.descripcion),
        ],
      ),
    );
  }
}
