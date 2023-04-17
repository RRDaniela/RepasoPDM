import 'dart:math';

import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  final String inputData;
  Pagina2({required this.inputData, super.key});

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  int _randomNumber = 0;

  void _generateRandomNumber() {
    setState(() {
      _randomNumber = Random().nextInt(100) + 1;
    });
  }

  void _goBack() {
    Navigator.pop(context, '${widget.inputData} $_randomNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: // Define el gradiente con los colores deseados
            [Colors.blueAccent, Colors.white],
        begin: Alignment.topCenter, // Punto de inicio del gradiente
        end: Alignment.bottomCenter,
      )),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Genere número random",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$_randomNumber',
                  style:
                      TextStyle(fontSize: 30, decoration: TextDecoration.none),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.white,
                  child: TextButton(
                    onPressed: _generateRandomNumber,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.00, 8.00, 10.00, 8.00),
                      child: Text(
                        "Generar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  child: TextButton(
                    onPressed: _goBack,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.00, 8.00, 10.00, 8.00),
                      child: Text(
                        "Guardar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
