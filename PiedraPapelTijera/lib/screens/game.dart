import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GameState();
  }
}

class GameState extends State<Game> {

  String _jugada1 = "";
  String _jugada2 = "";
  Map<int, String> jugadas = {0:"assets/images/paper.png",
  1:"assets/images/rock.png",
  2: "assets/images/scissors.png",};
  String resultado = "¡Dale a jugar!";

  void jugar(){
    final random = Random();
    setState(() {
// 1. Generamos los números aleatorios
      int int1 = random.nextInt(3);
      int int2 = random.nextInt(3);

      // 2. Asignamos las imágenes (usamos ! porque el Map puede devolver null)
      _jugada1 = jugadas[int1]!;
      _jugada2 = jugadas[int2]!;

      // 3. Evaluamos quién gana
      if (int1 == int2) {
        resultado = "¡Empate!";
      } else if ((int1 == 0 && int2 == 1) ||
          (int1 == 1 && int2 == 2) ||
          (int1 == 2 && int2 == 0)) {
        resultado = "¡Gana Jugador 1!";
      } else {
        resultado = "¡Gana Jugador 2!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rock-Paper-Scissors"),
        toolbarHeight: 120,
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                PlayerBox(
                  jugador: "Jugador 1",
                  jugada: _jugada1,
                  color: Colors.green,
                ),
                PlayerBox(
                  jugador: "Jugador 2",
                  jugada: _jugada2,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(resultado, style: TextStyle(fontSize: 30, fontWeight: .bold),),
            SizedBox(height: 10,),
            FilledButton(onPressed: () => jugar(), style: FilledButton.styleFrom(backgroundColor: Colors.red,), child: Text("Jugar"),)
          ],
        ),
      ),
    );
  }
}

class PlayerBox extends StatelessWidget {
  String _jugador;
  String _jugada;
  Color _color;

  PlayerBox({
    super.key,
    required this._jugador,
    required this._jugada,
    required this._color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Text(_jugador, style: TextStyle(fontSize: 22,fontWeight: .bold),),
          SizedBox(height: 10,),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
              shape: BoxShape.circle,
              image: _jugada.isNotEmpty
                  ? DecorationImage(image: AssetImage(_jugada), fit: .fill)
                  : null,
              color: _jugada.isEmpty ? _color : null,
            ),
          ),
        ],
      ),
    );
  }
}


