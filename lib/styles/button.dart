import 'package:flutter/material.dart';

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    maximumSize: const Size(300, 50),
    minimumSize: const Size(300, 50),
    backgroundColor: const Color.fromARGB(255, 51, 33, 243),
    elevation: 0,
    textStyle: const TextStyle(color: Colors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ));
