import 'package:flutter/material.dart';

class Butao extends StatelessWidget {
  final String text;
  final bool grande;
  final Function(String) cb;

  Butao({
    required this.text,
    this.grande = false,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: grande ? 2 : 1,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
