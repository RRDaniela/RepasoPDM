import 'package:flutter/material.dart';
import 'package:repaso/pagina2.dart';
import 'package:repaso/pagina3.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _inputText = "";
  String _inputData = "";
  String _buttonText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Repaso',
            style: TextStyle(fontFamily: 'Pacifico'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "BIENVENIDOS",
                  style: TextStyle(
                      fontFamily: 'Pacifico', fontSize: 35, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image.network(
                  "https://raw.githubusercontent.com/kevmoo/dart_side/master/Dash%20Dart%20PNG%20%20-%20white.png"),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Seleccione la acción a realizar: ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.blue,
                            child: TextButton(
                                onPressed: () {
                                  _openTextInputDialog(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'Página 2',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ))),
                  Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.blue,
                            child: TextButton(
                                onPressed: () {
                                  _dataFromPage3(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'Página 3',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ))),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("Pg.2 => " + _inputData)],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("Pg.3 => " + _buttonText)],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _openTextInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Ingrese datos"),
          content: SingleChildScrollView(
            child: TextField(
              maxLength: 10,
              decoration: InputDecoration(hintText: "Ingrese una palabra"),
              onChanged: (value) {
                _inputText = value;
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Aceptar"),
              onPressed: () {
                print("Texto ingresado: $_inputText");
                Navigator.of(context).pop();
                final result = Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pagina2(inputData: _inputText),
                  ),
                ).then((value) {
                  _updateInputData(value);
                });
              },
            ),
          ],
        );
      },
    );
  }

  void _updateInputData(String inputData) {
    setState(() {
      _inputData = inputData; // Update the value of _inputData
    });
  }

  void _dataFromPage3(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Pagina3(),
        ));
    setState(() {
      _buttonText = result;
    });
  }
}
