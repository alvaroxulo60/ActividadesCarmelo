import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("Tablero de juego Táctico"),
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
                              children: [Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo())],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              spacing: 2,
                              mainAxisSize: .max,
                              children: [Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo())],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              spacing: 2,
                              mainAxisSize: .max,
                              children: [Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo())],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              spacing: 2,
                              mainAxisSize: .max,
                              children: [Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo()), Expanded(child: Escudo())],
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
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 2, child: Container(color: Colors.white54)),
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
      child: Center(child: Icon(Icons.shield,color: Colors.grey,)),
    );
  }
}
