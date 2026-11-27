import 'package:flutter/material.dart';

class Details {
  var _valueTextField;
  bool _remote;
  bool _flutter;
  bool _android;
  bool _ios;
  RangeValues _rangeValues;

  Details(this._valueTextField, this._remote, this._flutter, this._android,
      this._ios, this._rangeValues);

  RangeValues get rangeValues => _rangeValues;

  bool get ios => _ios;

  bool get android => _android;

  bool get flutter => _flutter;

  bool get remote => _remote;

  get valueTextField => _valueTextField;


}