import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfoScreenState();
  }
}

class InfoScreenState extends State<InfoScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _remote = false;
  bool _flutter = false;
  bool _android = false;
  bool _ios = false;

  RangeValues _rangeValues = RangeValues(20, 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Sharing oportunities")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(label: Text("Job Title")),
                validator: (value) => value == null || value.isEmpty
                    ? "Debe rellenar el campo"
                    : null,
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
            RangeSlider(
              values: _rangeValues,
              min: 0,
              max: 100,
              onChanged: (RangeValues valores) {
                setState(() {
                  _rangeValues = valores;
                });
              },
              divisions: 10,
              labels: RangeLabels(
                _rangeValues.start.round().toString(),
                _rangeValues.end.round().toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
