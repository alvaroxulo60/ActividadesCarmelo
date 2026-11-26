import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogInScreenState();
  }
}

class _LogInScreenState extends State<LogInScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        centerTitle: true,
        title: Text(
          "Sharing oportunities",
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 48,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/rigby.jpg",
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(label: Text("Username")),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Debe rellenar el campo";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(label: Text("Password")),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Debe rellenar el campo";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.pushNamed(context, "");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[600],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                      ),
                      child: const Text("Iniciar Sesión", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
