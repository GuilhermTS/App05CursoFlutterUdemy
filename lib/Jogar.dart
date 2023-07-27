import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibiResultado(){
    var moeda = ["cara", "coroa"];
    var numer = Random().nextInt(moeda.length);
    var aleat = moeda[numer];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(aleat)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff61BD86),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
            GestureDetector(
              onTap: _exibiResultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
