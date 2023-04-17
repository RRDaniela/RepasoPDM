import 'dart:ffi';

import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({super.key});

  @override
  State<Pagina3> createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.white30),
                onPressed: () {
                  Navigator.pop(context, "¯\_(ツ)_/¯");
                },
                child: Text(
                  "¯\_(ツ)_/¯",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.white30),
                onPressed: () {
                  Navigator.pop(context, "ʕ •ᴥ•ʔ");
                },
                child: Text(
                  "ʕ •ᴥ•ʔ",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.white30),
                onPressed: () {
                  Navigator.pop(context, "¯ಠ_ಠ");
                },
                child: Text(
                  "¯ಠ_ಠ",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
