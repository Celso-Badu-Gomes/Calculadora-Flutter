import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../componentes/display.dart';
import '../componentes/teclado.dart';
import '../modelos/momoria.dart';

class Calculadora extends StatefulWidget {
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memoria memoria = Memoria();

  _onPressed(String comando) {
    setState(() {
      memoria.aplicarComand(comando);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget>[
          AppBar(
            title: Text('CALCULADORA DO CELSO'),
            toolbarHeight: 100,
          ),
          Display(memoria.valor),
          Teclado(_onPressed),
        ],
      ),
    );
  }
}
