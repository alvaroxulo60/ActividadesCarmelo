import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScrollState();
  }

}

class ScrollState extends State<Scroll> {

  final ScrollController _scrollController = ScrollController();
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange
  ];
  int _startColorIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_fillBackground);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List<Container>.generate(5, (index) {
            return Container(height: 200,
              color: _startColorIndex < index ? colors[_startColorIndex]: colors[index],
            margin: EdgeInsets.all(1),);
          },),
        ),
      ),
    );
  }

  void _fillBackground(){
    setState(() {
      _startColorIndex = min(5, ((_scrollController.offset -100)/200).ceil());

    });
  }

}