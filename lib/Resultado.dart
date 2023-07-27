import 'package:cara_ou_coroa/Jogar.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var _results;
    if(widget.valor == "cara"){
      _results = "images/moeda_cara.png";
    } else {
      _results = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: Color(0Xff61BD86),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(_results),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );;
  }
}
