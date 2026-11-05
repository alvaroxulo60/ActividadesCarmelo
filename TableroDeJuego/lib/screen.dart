import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          "Tablero de juego Táctico",
          textAlign: .center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisSize: .max,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blueGrey[700],
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: .max,
                        spacing: 2,
                        children: [
                          Expanded(
                            child: Row(
                              spacing: 2,
                              mainAxisSize: .max,
                              children: [
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              spacing: 2,
                              mainAxisSize: .max,
                              children: [
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              spacing: 2,
                              mainAxisSize: .max,
                              children: [
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              spacing: 2,
                              mainAxisSize: .max,
                              children: [
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                                Expanded(child: Escudo()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.blueGrey[800],
                      ),
                      child: Column(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          Expanded(
                            child: PlayerData(
                              color: Colors.blue,
                              nombre: "Jugador 1",
                              puntos: 120,
                              icon: Icons.person,
                            ),
                          ),
                          Expanded(
                            child: PlayerData(
                              color: Colors.red,
                              nombre: "Jugador 2",
                              puntos: 120,
                              icon: Icons.person_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white54,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Historial de Movimientos",
                        textAlign: .center,
                        style: TextStyle(fontWeight: .bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemBuilder: (context, index) => Historial(
                        color: index % 2 == 0 ? Colors.blue : Colors.red,
                        jugador: index % 2 == 0 ? "Jugador 1" : "Jugador 2",
                      ),
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Escudo extends StatelessWidget {
  const Escudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.blueGrey[500],
      ),
      child: Center(child: Icon(Icons.shield, color: Colors.grey)),
    );
  }
}

class PlayerData extends StatelessWidget {
  Color _color;
  String _nombre;
  int _puntos;
  IconData _icon;

  PlayerData({
    super.key,
    required this._color,
    required this._nombre,
    required this._puntos,
    required this._icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text("$_nombre", style: TextStyle(color: Colors.white)),
          SizedBox(height: 15),
          Icon(_icon, color: _color, size: 48),
          SizedBox(height: 15),
          Text("Puntos: $_puntos", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class Historial extends StatelessWidget {
  Color _color;
  String _jugador;
  static int _contador = 1;

  Historial({super.key, required this._color, required this._jugador});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("${_contador++}", style: TextStyle(color: Colors.white)),
        backgroundColor: _color,
      ),
      title: Text("$_jugador movió pieza"),
      subtitle: Text("Caballero a la casilla C4"),
      trailing: Icon(Icons.history),
    );
  }
}
