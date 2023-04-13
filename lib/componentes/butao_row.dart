import 'package:flutter/material.dart';
import 'butao.dart';

class ButaoRow extends StatelessWidget {
  final List<Butao> butoes;

  ButaoRow(this.butoes);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: butoes,
    );
  }
}
