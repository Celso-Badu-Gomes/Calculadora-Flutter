import 'dart:html';

import 'package:flutter/material.dart';
import 'butao_row.dart';
import 'butao.dart';

class Teclado extends StatelessWidget {
  final void Function(String) cb;

  Teclado(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Column(
        children: <Widget>[
          ButaoRow([
            Butao(
              text: 'AC',
              cb: cb,
              grande: true,
            ),
            Butao(text: '%', cb: cb),
            Butao(text: '/', cb: cb),
          ]),
          ButaoRow([
            Butao(text: '7', cb: cb),
            Butao(text: '8', cb: cb),
            Butao(text: '9', cb: cb),
            Butao(text: 'x', cb: cb),
          ]),
          ButaoRow([
            Butao(text: '4', cb: cb),
            Butao(text: '5', cb: cb),
            Butao(text: '6', cb: cb),
            Butao(text: '-', cb: cb),
          ]),
          ButaoRow([
            Butao(text: '1', cb: cb),
            Butao(text: '2', cb: cb),
            Butao(text: '3', cb: cb),
            Butao(text: '+', cb: cb),
          ]),
          ButaoRow([
            Butao(text: '0', cb: cb, grande: true),
            Butao(text: '.', cb: cb),
            Butao(text: '=', cb: cb),
          ])
        ],
      ),
    );
  }
}
