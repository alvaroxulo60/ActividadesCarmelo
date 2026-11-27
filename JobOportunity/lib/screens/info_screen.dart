import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_oportunity/data/details.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfoScreenState();
  }
}

class InfoScreenState extends State<InfoScreen> {
  final _formKey = GlobalKey<FormState>();

  var _valueTextField = "";
  bool _remote = false;
  bool _flutter = false;
  bool _android = false;
  bool _ios = false;

  RangeValues _rangeValues = RangeValues(20, 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sharing oportunities", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal[600],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(label: Text("Job Title")),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Debe introducir un valor válido";
                  } else {
                    setState(() {
                      _valueTextField = value;
                    });
                    return null;
                  }
                },
              ),
            ),
            SwitchListTile(
              value: _remote,
              onChanged: (value) {
                setState(() {
                  if (_remote == false) {
                    _remote = true;
                  } else {
                    _remote = false;
                  }
                });
              },
              title: Text("Remoto: "),
              activeThumbColor: Colors.blue,
              activeTrackColor: Colors.blue[200],
            ),
            Divider(height: 1, indent: 20, endIndent: 20, thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Coding experience in: ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            CheckboxListTile(
              value: _flutter,
              onChanged: (value) {
                setState(() {
                  if (_flutter == false) {
                    _flutter = true;
                  } else {
                    _flutter = false;
                  }
                });
              },
              title: Text("Flutter: "),
              activeColor: Colors.blue,
            ),
            CheckboxListTile(
              value: _android,
              onChanged: (value) {
                setState(() {
                  if (_android == false) {
                    _android = true;
                  } else {
                    _android = false;
                  }
                });
              },
              title: Text("Android: "),
              activeColor: Colors.blue,
            ),
            CheckboxListTile(
              value: _ios,
              onChanged: (value) {
                setState(() {
                  if (_ios == false) {
                    _ios = true;
                  } else {
                    _ios = false;
                  }
                });
              },
              title: Text("Ios: "),
              activeColor: Colors.blue,
            ),
            SizedBox(height: 10),
            Center(child: Text("Salary", style: TextStyle(fontSize: 14))),
            RangeSlider(
              values: _rangeValues,
              min: 0,
              max: 100,
              onChanged: (RangeValues valores) {
                setState(() {
                  _rangeValues = valores;
                });
              },
              activeColor: Colors.blue,
              divisions: 10,
              labels: RangeLabels(
                _rangeValues.start.round().toString(),
                _rangeValues.end.round().toString(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                  Navigator.pushNamed(context, "details",arguments: Details(_valueTextField, _remote, _flutter, _android, _ios, _rangeValues));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[600],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
              ),
              child: Text("Detalles", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
