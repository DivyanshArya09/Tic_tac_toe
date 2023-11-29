import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final String text;
  final boxColor;
  const Block({
    super.key,
    required this.text,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
